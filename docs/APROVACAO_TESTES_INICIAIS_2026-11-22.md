# Aprovação dos testes iniciais — 22/11/2026

**Decisão do usuário:** após receber o resultado da CAR-25, o usuário informou que **realizou pessoalmente o teste indicado pelo Codex e aprova o resultado**. Pediu para encerrar esta rodada de testes exploratórios e registrar tudo no GitHub.

## Trabalho aceito

- **CAR-23 — portal temporário:** o usuário já havia aprovado visualmente o estilo futurista azul/roxo. O modelo `Workspace.MCP_Demo_Temporaria` deve **continuar preservado** no Place1; não foi autorizada a remoção.
- **CAR-25 — teste isolado de ragdoll R15:** o Codex registrou implementação e Play solo com 20 ciclos de cair/levantar, recuperação de câmera e movimento após respawn, sem acúmulo de juntas/colisores observado. O usuário executou as instruções de teste manual e **declarou aprovação** nesta conversa.
- **Nenhuma nova funcionalidade foi autorizada nesta aprovação.** A arena (CAR-24), plataforma de lançamento (CAR-26), HUD definitivo (CAR-27) e publicação do jogo permanecem para etapas posteriores.

## Evidências que já estavam versionadas

- [Relatório CAR-23](CAR-23_TESTE_VISUAL_PORTAL.md) e [captura do portal](evidencias/CAR-23-portal.jpg).
- [Relatório CAR-25](CAR-25_TESTE_RAGDOLL_R15.md) e [captura do ragdoll](evidencias/CAR-25-ragdoll-r15.jpg).
- [Servidor Luau](../src/server/RagdollR15TesteServidor.server.luau) e [cliente Luau](../src/client/RagdollR15TesteCliente.client.luau).
- [Prompt mestre e critérios do MVP](../prompts/primeiro-playground-ragdoll.md).

## Limites do que foi testado

Não declarar resultados inexistentes: **multiplayer, toque em dispositivo físico, recuperação do backup em outra sessão** e testes completos do jogo ainda não estão verificados. O Codex registrou um aviso de incompatibilidade referente a um asset externo à dupla de scripts, cuja causa permanece indeterminada. A aprovação cobre **a demonstração inicial e o teste de ragdoll feito pelo usuário**, não a certificação final da experiência Roblox.

**"Último teste"** neste contexto significa **encerrar a fase de experimentos iniciais** e concentrar as próximas sessões em desenvolvimento, sem impedir os testes de qualidade normais de cada funcionalidade futura.

## Arquivos completos versionados

Além dos scripts Luau, capturas e documentos, os três snapshots `.rbxl` foram enviados à branch `main` do GitHub:

- [Mapa atual com portal + ragdoll](../studio/Place1.rbxl)
- [Backups anteriores às alterações](../studio/backups/)
- [Hashes SHA-256 e instruções](../studio/README.md)

As tarefas de planejamento e demonstração **CAR-22, CAR-23 e CAR-25** foram marcadas **Done** no Linear em 22/11/2026 com base na aprovação do usuário e nas evidências do teste isolado. Isso não indica que o jogo inteiro está pronto nem que os cenários pendentes foram testados.

## Continuidade

Em nova conversa: ler [`CONTEXTO_GERAL.md`](../CONTEXTO_GERAL.md), o [prompt mestre](../prompts/primeiro-playground-ragdoll.md) e a tarefa atual do Linear. Antes de iniciar a próxima etapa, confirmar o escopo autorizado. Priorizar a preservação do Place1 com o portal e o ragdoll, a documentação e o versionamento de scripts.
