--!strict
-- Temporary R15 playtest for CAR-25.
local PhysicsService = game:GetService("PhysicsService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local REMOTE_NAME = "RagdollR15TesteRequest"
local STATE_ATTRIBUTE = "RagdollR15TesteAtivo"
local REQUEST_INTERVAL = 0.25
local COLLISION_GROUP = "RagdollR15TesteBody"

PhysicsService:RegisterCollisionGroup(COLLISION_GROUP)
PhysicsService:CollisionGroupSetCollidable(COLLISION_GROUP, COLLISION_GROUP, false)

type ActiveState = {
	character: Model,
	motors: { AnimationConstraint },
	autoRotate: boolean,
	requiresNeck: boolean,
	platformStand: boolean,
	colliderFolder: Folder,
	collisionGroups: { [BasePart]: string },
}

local active: { [Player]: ActiveState } = {}
local lastRequest: { [Player]: number } = {}
local removingConnections: { [Player]: RBXScriptConnection } = {}

local function getNativeJoints(character: Model): { AnimationConstraint }?
	local sockets: { [BasePart]: { [BasePart]: boolean } } = {}
	local motors: { AnimationConstraint } = {}
	local joints = character:GetDescendants()

	local function owningPart(attachment: Attachment?): BasePart?
		return if attachment then attachment:FindFirstAncestorWhichIsA("BasePart") else nil
	end

	for _, joint in joints do
		if joint:IsA("BallSocketConstraint") and joint.Enabled then
			local first, second = owningPart(joint.Attachment0), owningPart(joint.Attachment1)
			if first and second then
				sockets[first] = sockets[first] or {}
				sockets[second] = sockets[second] or {}
				sockets[first][second] = true
				sockets[second][first] = true
			end
		end
	end
	for _, joint in joints do
		if joint:IsA("AnimationConstraint") and joint.Enabled and joint.Name ~= "Root" then
			local first, second = owningPart(joint.Attachment0), owningPart(joint.Attachment1)
			if not first or not second or not (sockets[first] and sockets[first][second]) then
				return nil
			end
			table.insert(motors, joint)
		end
	end
	return if #motors == 14 then motors else nil
end

local function addFloorContacts(character: Model, humanoid: Humanoid): (Folder, { [BasePart]: string })
	local folder = Instance.new("Folder")
	folder.Name = "RagdollR15TesteColisores"
	local originalGroups: { [BasePart]: string } = {}
	for _, part in character:GetDescendants() do
		if part:IsA("BasePart") then
			originalGroups[part] = part.CollisionGroup
			part.CollisionGroup = COLLISION_GROUP
			if
				part.Parent == character
				and not part.CanCollide
				and humanoid:GetBodyPartR15(part) ~= Enum.BodyPartR15.Unknown
			then
				local collider = Instance.new("Part")
				collider.Name = part.Name
				collider.Size = part.Size * 0.82
				collider.CFrame = part.CFrame
				collider.Transparency = 1
				collider.CanTouch = false
				collider.Massless = true
				collider.CollisionGroup = COLLISION_GROUP

				local weld = Instance.new("WeldConstraint")
				weld.Part0 = part
				weld.Part1 = collider
				weld.Parent = collider
				collider.Parent = folder
			end
		end
	end
	folder.Parent = character
	return folder, originalGroups
end

local function followCharacter(player: Player)
	removingConnections[player] = player.CharacterRemoving:Connect(function(character)
		local state = active[player]
		if state and state.character == character then
			active[player] = nil
		end
		lastRequest[player] = nil
	end)
end

Players.PlayerAdded:Connect(followCharacter)
Players.PlayerRemoving:Connect(function(player)
	local connection = removingConnections[player]
	if connection then
		connection:Disconnect()
	end
	removingConnections[player] = nil
	active[player] = nil
	lastRequest[player] = nil
end)
for _, player in Players:GetPlayers() do
	followCharacter(player)
end

local remote = Instance.new("RemoteEvent")
remote.Name = REMOTE_NAME

remote.OnServerEvent:Connect(function(player: Player, suppliedCharacter: any, desired: any, ...)
	local now = os.clock()
	if now - (lastRequest[player] or -math.huge) < REQUEST_INTERVAL then
		return
	end
	lastRequest[player] = now

	local character = player.Character
	if
		not character
		or suppliedCharacter ~= character
		or typeof(desired) ~= "boolean"
		or select("#", ...) ~= 0
		or not character:IsDescendantOf(workspace)
	then
		return
	end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	local root = character:FindFirstChild("HumanoidRootPart")
	if
		not humanoid
		or humanoid.Health <= 0
		or humanoid.RigType ~= Enum.HumanoidRigType.R15
		or not root
		or not root:IsA("BasePart")
		or root.Anchored
	then
		return
	end

	local state = active[player]
	if desired then
		if state or humanoid.Sit or humanoid.PlatformStand then
			return
		end
		local motors = getNativeJoints(character)
		if not motors then
			return
		end

		local colliderFolder, collisionGroups = addFloorContacts(character, humanoid)
		active[player] = {
			character = character,
			motors = motors,
			autoRotate = humanoid.AutoRotate,
			requiresNeck = humanoid.RequiresNeck,
			platformStand = humanoid.PlatformStand,
			colliderFolder = colliderFolder,
			collisionGroups = collisionGroups,
		}
		humanoid.RequiresNeck = false
		humanoid.PlatformStand = true
		humanoid.AutoRotate = false
		for _, joint in motors do
			joint.Enabled = false
		end
		root.AssemblyAngularVelocity += root.CFrame.LookVector * 2.2
		character:SetAttribute(STATE_ATTRIBUTE, true)
	elseif state and state.character == character then
		local rayParams = RaycastParams.new()
		rayParams.FilterType = Enum.RaycastFilterType.Exclude
		rayParams.FilterDescendantsInstances = { character }
		rayParams.RespectCanCollide = true
		local hit = workspace:Raycast(root.Position + Vector3.yAxis * 2, -Vector3.yAxis * 10, rayParams)
		local look = root.CFrame.LookVector * Vector3.new(1, 0, 1)
		if look.Magnitude < 0.05 then
			look = -Vector3.zAxis
		end
		local center = root.Position
		local standingHeight = humanoid.HipHeight + root.Size.Y * 0.5
		local nearGround = hit and hit.Normal.Y > 0.5 and center.Y - hit.Position.Y <= standingHeight + 0.75
		local airVelocity = if nearGround then Vector3.zero else root.AssemblyLinearVelocity
		if hit and nearGround then
			center = Vector3.new(center.X, hit.Position.Y + standingHeight + 0.1, center.Z)
		end
		local upright = CFrame.lookAt(center, center + look)
		character:PivotTo(upright * root.CFrame:ToObjectSpace(character:GetPivot()))
		for _, part in character:GetChildren() do
			if part:IsA("BasePart") then
				part.AssemblyLinearVelocity = airVelocity
				part.AssemblyAngularVelocity = Vector3.zero
			end
		end
		for _, joint in state.motors do
			joint.Enabled = true
		end
		state.colliderFolder:Destroy()
		for part, group in state.collisionGroups do
			if part:IsDescendantOf(character) then
				part.CollisionGroup = group
			end
		end
		humanoid.RequiresNeck = state.requiresNeck
		humanoid.AutoRotate = state.autoRotate
		humanoid.PlatformStand = state.platformStand
		active[player] = nil
		character:SetAttribute(STATE_ATTRIBUTE, false)
	end
end)

remote.Parent = ReplicatedStorage
