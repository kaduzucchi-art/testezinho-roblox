--!strict
-- Minimal keyboard, mouse, and touch controls for CAR-25.
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local remote = ReplicatedStorage:WaitForChild("RagdollR15TesteRequest", 10)
if not remote or not remote:IsA("RemoteEvent") then
	return
end

local ATTRIBUTE = "RagdollR15TesteAtivo"
local gui = Instance.new("ScreenGui")
gui.Name = "RagdollR15TesteGui"
gui.ResetOnSpawn = false
gui.DisplayOrder = 2
gui.ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets

local button = Instance.new("TextButton")
button.Name = "AlternarRagdoll"
button.AnchorPoint = Vector2.new(1, 0.5)
button.Position = UDim2.new(1, -20, 0.43, 0)
button.Size = UDim2.fromOffset(154, 46)
button.BackgroundColor3 = Color3.fromRGB(38, 50, 98)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 18
button.Font = Enum.Font.GothamBold
button.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 9)
corner.Parent = button
gui.Parent = playerGui

local stateChanged: RBXScriptConnection? = nil

local function render()
	local character = player.Character
	local ragdoll = character ~= nil and character:GetAttribute(ATTRIBUTE) == true
	button.Text = if ragdoll then "Levantar" else "Ragdoll"
	if UserInputService.PreferredInput == Enum.PreferredInput.KeyboardAndMouse then
		button.Text ..= "  [R]"
	end
	button.BackgroundColor3 = if ragdoll then Color3.fromRGB(90, 49, 136) else Color3.fromRGB(38, 50, 98)
end

local function observe(character: Model?)
	if stateChanged then
		stateChanged:Disconnect()
	end
	stateChanged = if character then character:GetAttributeChangedSignal(ATTRIBUTE):Connect(render) else nil
	render()
end

local function requestToggle()
	local character = player.Character
	if character then
		remote:FireServer(character, character:GetAttribute(ATTRIBUTE) ~= true)
	end
end

button.Activated:Connect(requestToggle)
UserInputService.InputBegan:Connect(function(input, handled)
	if not handled and not UserInputService:GetFocusedTextBox() and input.KeyCode == Enum.KeyCode.R then
		requestToggle()
	end
end)
UserInputService:GetPropertyChangedSignal("PreferredInput"):Connect(render)
player.CharacterAdded:Connect(observe)
player.CharacterRemoving:Connect(function()
	observe(nil)
end)
observe(player.Character)
