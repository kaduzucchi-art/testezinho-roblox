# CAR-22 · Plano do primeiro playground ragdoll

**Status:** proposta para revisão. A aprovação explícita de Carlos está pendente.

> **Para o modo Chat:** use este arquivo como ponto de entrada para revisar a proposta. Antes de responder, leia integralmente o [prompt mestre v1.1](../prompts/primeiro-playground-ragdoll.md) na branch `main` e depois leia este plano completo. Ajude Carlos a avaliar a proposta. Só Carlos pode dar a aprovação para iniciar o desenvolvimento.

**Recomendação:** usar o próprio avatar R15, com ragdoll reversível e uma arena feita de peças nativas do Roblox Studio. A proposta já está registrada na [CAR-22 no Linear](https://linear.app/carloszucchi/issue/CAR-22/superpowers-especificacao-alternativas-tecnicas-e-aprovacao-do-mvp), que segue em `Todo` até a aprovação.

Foram lidos integralmente o prompt mestre v1.1, o README e os quatro documentos de `docs/` na `main`. Na sessão de planejamento, o MCP do Roblox respondeu com **Place1** em modo de edição e o MCP do Blender respondeu com a versão **5.3.0**. Na revisão original, o README ainda indicava a leitura da cena Blender como pendente. O prompt v1.1 e o [relatório do Blender](BLENDER_MCP_2026-11-22.md) já registravam esse teste como concluído. A inspeção do Place1 em modo de edição não encontrou scripts no escopo consultado. O tipo de junta usado pelo avatar ainda será confirmado no primeiro playtest autorizado.

## Especificação proposta

O jogador nasce, anda até a plataforma, ativa o ragdoll se quiser, é lançado, aterrissa e pode levantar para repetir. A arena será compacta e cartunesca, com cores e sinalização que distinguem o spawn, o lançamento e a aterrissagem. Barreiras e um volume de recuperação devolvem ao spawn quem sair dos limites.

| Abordagem | Impacto no MVP |
|---|---|
| **Avatar real com juntas reversíveis** | Mantém o personagem que o jogador já controla, sua aparência e a câmera padrão. Exige validar as juntas e testar a recuperação após a queda. **É a opção recomendada.** |
| **Corpo físico separado** | Dá mais liberdade para desenhar a física do boneco. Exige sincronizar a aparência, a câmera, a posição de retorno e o que os outros clientes veem. |

A primeira decisão de implementação será inspecionar o R15 em execução. Se o rig usar `AnimationConstraint`, a proposta é aproveitar as juntas nativas em modo físico. Se usar `Motor6D`, a proposta é alternar as juntas originais com `BallSocketConstraint` limitadas, preparadas uma vez por personagem. Em ambos os casos, vamos validar cabeça, raiz, colisões e câmera. O botão **Levantar** recupera o controle em solo, e **Reiniciar** oferece uma saída se o personagem ficar preso. [AnimationConstraint](https://create.roblox.com/docs/reference/engine/classes/AnimationConstraint) · [Motor6D](https://create.roblox.com/docs/reference/engine/classes/Motor6D) · [BallSocketConstraint](https://create.roblox.com/docs/reference/engine/classes/BallSocketConstraint)

### Objetos e scripts previstos

| Local no Explorer | Responsabilidade |
|---|---|
| `Workspace.RagdollArena` | `ArenaFloor`, `LaunchPad`, `LaunchTrigger`, `LandingZone`, `BoundaryWalls` e `RecoveryZone`. A arena aproveita o `SpawnLocation` existente e preserva a `Baseplate`. |
| `ServerScriptService.PlaygroundServer` | Receber pedidos, cuidar do ciclo de vida dos personagens e coordenar respawn e limpeza. |
| `ServerScriptService.RagdollController` | Preparar e alternar juntas, controlar colisões no ragdoll e restaurar os valores originais do personagem. |
| `ServerScriptService.LaunchPadController` | Confirmar a entrada na plataforma e aplicar um impulso limitado na direção da aterrissagem. |
| `ReplicatedStorage.PlaygroundRemotes.RequestAction` | Receber apenas `EnableRagdoll`, `DisableRagdoll` ou `Reset`. O servidor identifica o remetente, valida o personagem atual e limita a frequência dos pedidos. |
| `StarterGui.PlaygroundHud` | `RagdollButton`, `ResetButton`, `InstructionsLabel` e `HudController`. O texto **Ragdoll / Levantar** acompanha o estado confirmado pelo servidor. |

**Decisões propostas para testar.** Usar `R` para alternar o ragdoll e botões clicáveis ou tocáveis para as duas ações. Posicionar a interface fora das áreas do joystick e do salto. A plataforma funciona em pé e em ragdoll, com cooldown inicial de **2 segundos por jogador** e só rearma depois da saída da área de contato. O servidor confirma a entrada e calcula o impulso. Força, ângulo e limites das juntas serão calibrados no playtest. [Validação cliente-servidor](https://create.roblox.com/docs/scripting/security/client-server-boundary) · [Áreas seguras da tela](https://create.roblox.com/docs/reference/engine/enums/ScreenInsets) · [Assemblies e impulso](https://create.roblox.com/docs/physics/assemblies)

## Plano de implementação após aprovação

| Linear | Etapa | Evidência de aceite |
|---|---|---|
| **CAR-23** | Fazer backup local do `Place1` e testar a escrita MCP com uma instância temporária. | Cópia recuperável e instância de teste criada, confirmada e removida. |
| **CAR-24** | Montar a arena com peças nativas, sinalização e proteção de borda. | Spawn e movimento funcionam. Dá para localizar a plataforma e a aterrissagem de imediato. |
| **CAR-25** | Inspecionar o rig real, implementar ragdoll e recuperação. | Em 20 alternâncias, câmera e movimento voltam, sem morte acidental ou crescimento na contagem de juntas. |
| **CAR-26** | Adicionar lançamento por entrada confirmada pelo servidor. | Funciona em pé e em ragdoll. Ficar sobre a plataforma produz um único lançamento por entrada, inclusive quando vários membros tocam o sensor. |
| **CAR-27** | Ligar a interface, o reset e a recuperação fora dos limites. | Mouse, teclado e toque funcionam. Reset em ragdoll ou no ar devolve o controle e limpa o estado anterior. |
| **CAR-28 e CAR-29** | Testar o ciclo completo, celular em retrato e paisagem e dois clientes quando o ambiente permitir. | Cada jogador controla apenas seu avatar. Pedidos inválidos, repetidos ou durante respawn são rejeitados. Registrar Output, contagem de instâncias e eventuais picos de física. |
| **CAR-30** | Versionar fontes e evidências no GitHub. | Branch de feature, commits por incremento, revisão de diff, StyLua e Selene quando aplicáveis e instruções de reprodução. |

Os playtests vão usar o Studio com inspeção do cliente e do servidor. A validação de desempenho começa pela contagem de instâncias antes e depois dos ciclos de ragdoll e respawn. Se houver travadas, o MicroProfiler ajuda a localizar o custo de física ou scripts. [Modos de teste do Studio](https://create.roblox.com/docs/studio/testing-modes)

No GitHub, a proposta é espelhar o Explorer em `src/server/` e `src/client/`, guardar a montagem reproduzível da arena em `studio/build-arena.luau` e documentar em `docs/` como reconstruir e testar o lugar. Qualquer sincronização do Rojo com o `Place1` passa por revisão do impacto e aprovação específica.

O **Blender fica na CAR-32**, para quando houver um modelo original que justifique o uso. O MCP atual já oferece a ponte necessária para avaliar esse fluxo. As peças nativas são suficientes para validar a arena, a física e os controles do MVP. [CAR-32 no Linear](https://linear.app/carloszucchi/issue/CAR-32/preparar-pipeline-de-assets-blender-roblox-studio-futuro)

**Estado atual:** planejamento registrado na CAR-22 e conexões verificadas em leitura. Implementação, teste de escrita e playtests aguardam aprovação. Com a aprovação explícita de Carlos, a primeira etapa é a **CAR-23**, com o backup do `Place1` e o teste reversível de escrita.
