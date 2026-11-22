# CONTEXTO GERAL — Testezinho Roblox

> **Fonte de continuidade do projeto.** Atualizado em 22/11/2026 após o teste isolado de ragdoll da **CAR-25**. Este arquivo resume estado e decisões, mas **não substitui** o [prompt mestre](prompts/primeiro-playground-ragdoll.md), o [plano aprovado](docs/CAR-22_PLANO_MVP_RAGDOLL.md) nem as evidências de cada tarefa.  
> **Antes de trabalhar:** leia este resumo, o prompt mestre na íntegra e a documentação da tarefa relevante. Confirme o estado atual no Studio/Linear/GitHub antes de qualquer escrita.

## 1. Objetivo

Criar, com auxílio principal do **Codex**, experiências Roblox originais e divertidas, começando por um **playground de física ragdoll** compacto: spawn → movimento → alternar ragdoll → lançamento por plataforma → aterrissagem → recuperação → repetir. UI para PC e celular; tratamento adequado de respawn e multiplayer.

O jogo **não está pronto**. O teste isolado de ragdoll R15 foi implementado e validado em Play solo. A arena e as demais mecânicas do MVP continuam aguardando autorização.

## 2. Fontes e ferramentas

- **GitHub (código, prompts e registros):** https://github.com/kaduzucchi-art/testezinho-roblox — branch principal `main`.
- **Prompt mestre:** [`prompts/primeiro-playground-ragdoll.md`](prompts/primeiro-playground-ragdoll.md).
- **Plano técnico da CAR-22:** [`docs/CAR-22_PLANO_MVP_RAGDOLL.md`](docs/CAR-22_PLANO_MVP_RAGDOLL.md).
- **Linear (tarefas):** https://linear.app/carloszucchi/project/testezinho-roblox-ai-ragdoll-playground-8cd1127081c2.
- **Codex + Roblox Studio MCP:** integração validada em leitura e agora **escrita controlada** no `Place1`, conforme [evidência CAR-23](docs/CAR-23_TESTE_VISUAL_PORTAL.md).
- **Superpowers + skills Roblox:** metodologia de planejamento, depuração, testes e desenvolvimento com Luau. Rojo (CLI + plugin), Rokit, Selene, StyLua e Git instalados, mas sincronização Rojo com um lugar existente exige backup, revisão e aprovação.
- **Blender 5.3 + MCP:** leitura validada pelo Codex. **Opcional no primeiro MVP**; outro agente de Blender não é necessário agora. [Decisão](docs/DECISAO_AGENTE_IA_BLENDER.md) e [registro MCP](docs/BLENDER_MCP_2026-11-22.md).
- **Context7:** apoio opcional para documentação atual, **Creator Hub oficial como fonte primária** para APIs Roblox. A disponibilidade do Context7 no Codex depende da sessão. [Decisão](docs/CONTEXT7_NO_DESENVOLVIMENTO.md).
- **REA:** fora do fluxo principal.

## 3. Situação em 22/11/2026

| Item | Estado | Evidência ou pendência |
| --- | --- | --- |
| MCP Roblox em leitura | Confirmado | Codex listou objetos do `Workspace` no `Place1` |
| MCP Blender em leitura | Confirmado | Codex listou `Camera`, `Cube`, `Light` na cena |
| CAR-22 — especificação de ragdoll | Plano salvo; arquitetura aceita para a CAR-23 | [Plano](docs/CAR-22_PLANO_MVP_RAGDOLL.md); não significa aprovação para todas as próximas tarefas |
| CAR-23 — backup e prova de escrita | **Em andamento**; visual aprovado e portal confirmado em Play na CAR-25. Travessia dedicada e restauração do backup pendentes | [Relatório com captura](docs/CAR-23_TESTE_VISUAL_PORTAL.md) |
| CAR-24 — arena jogável | Não iniciada | Depende de nova autorização |
| CAR-25 — ragdoll R15 | **Em andamento**; teste isolado implementado e validado em Play solo | [Relatório e captura](docs/CAR-25_TESTE_RAGDOLL_R15.md) |
| CAR-26 — plataforma de impulso | Não iniciada | Cooldown e validação no servidor |
| CAR-27 — interface e reset | Não iniciada | PC/celular |
| CAR-28–CAR-30 — testes e código versionado | Não iniciados | Solo, multiplayer, segurança, desempenho, scripts no GitHub |
| CAR-32 — pipeline Blender → Roblox | Backlog/futuro | Modelagem e importação não testadas |

## 4. Primeiro teste prático (CAR-23)

O Codex registrou no GitHub a criação, no Studio, de **`Workspace.MCP_Demo_Temporaria`** — portal decorativo de moldura azul/roxa, neon ciano/violeta, com plataforma, sem scripts.

- **47 Parts ancoradas**, **2 PointLights**, **3 pastas**, organizadas num Model.
- Pivô aproximadamente **(24, 0.17, 0)**, a **24 studs do spawn na direção +X**, voltado ao spawn.
- Apenas duas peças da plataforma com colisão; o relatório afirma que `Baseplate` e `SpawnLocation` foram preservados.
- **Backup local pré-edição:** `Place1-backup-pre-CAR-23.rbxl`. O Codex relatou integridade verificada por SHA-256 contra o `Place1.rbxl` anterior. **A abertura do backup em outra sessão do Studio ainda não foi testada.**
- A cena foi salva e documentada no commit [`234b8c92`](https://github.com/kaduzucchi-art/testezinho-roblox/commit/234b8c92d98aa2ffbd89f66ca71e45becc897f5a).
- **Captura real:** [`docs/evidencias/CAR-23-portal.jpg`](docs/evidencias/CAR-23-portal.jpg).
- **Registro técnico completo:** [`docs/CAR-23_TESTE_VISUAL_PORTAL.md`](docs/CAR-23_TESTE_VISUAL_PORTAL.md).
- **Play:** o portal continuou presente no teste solo da CAR-25. A travessia dedicada com avatar e a reabertura do backup ainda não foram verificadas. **Avaliação visual recebida:** o usuário gostou do visual futurista do portal (22/11/2026) e quer preservá-lo.

Para encontrar o portal: **Explorador → Workspace → MCP_Demo_Temporaria → selecionar Model → tecla F**.

**Decisão recebida:** o usuário aprovou o visual do portal. **Não remover o Model sem autorização e não iniciar a CAR-24 sem nova autorização.** O teste comprova escrita e inspeção no Studio segundo os registros do Codex, mas não comprova que as mecânicas planejadas funcionam.

## 5. Decisões e limites permanentes

1. **Priorizar jogabilidade** sobre novo software, agentes de IA ou assets 3D.
2. Para o MVP, criar a arena com **Parts e materiais nativos**; Blender e geração externa são opcionais e precisam de justificativa e aprovação.
3. **Cliente não é confiável:** validar no servidor pedidos e estados compartilhados. Prever recuperação de ragdoll e limpeza no respawn.
4. **Proteger o mapa:** backup antes de alterações amplas; não sincronizar Rojo automaticamente nem apagar recursos existentes sem autorização.
5. **Não publicar**, monetizar, ativar serviços pagos, baixar assets não auditados ou divulgar credenciais.
6. Apenas marcar uma tarefa como concluída quando as evidências realmente sustentarem o aceite. Manter distinção entre **planejado, implementado, observado e testado**.
7. GitHub guarda as fontes e registros. O **arquivo RBXL local não deve ser presumido disponível no GitHub**: somente o que foi efetivamente versionado.
8. O projeto é administrado atualmente por uma pessoa; colaboração futura dependerá de convites explícitos. Não alterar permissões automaticamente.

## 6. Próxima ação recomendada

**Agora:** avaliar o teste de ragdoll no Place1 local. Inicie Play (F5), ande alguns passos e pressione R ou clique em **Ragdoll / Levantar**. O playtest final realizou 20 ciclos, recuperação no ar, respawn após morte simulada com ragdoll ativo e movimento pós-respawn. [Evidências, fontes e pendências](docs/CAR-25_TESTE_RAGDOLL_R15.md).

**Depois:** aguardar avaliação de Carlos. Multiplayer, toque em dispositivo e reabertura do backup seguem pendentes. CAR-24, CAR-26 e CAR-27 completa exigem autorização própria.

## 7. Regra para próximas conversas no Codex

> Leia o arquivo `CONTEXTO_GERAL.md` **e o prompt mestre completo** de `prompts/primeiro-playground-ragdoll.md` na branch `main`, além do registro específico da tarefa. **Para o teste já executado, consulte `prompts/teste-ragdoll-r15-isolado.md` e `docs/CAR-25_TESTE_RAGDOLL_R15.md`.** Consulte o Linear para o estado atual. Não presuma que arquivos de documentação representam scripts implementados no Roblox. Respeite a aprovação por fase e registre no GitHub decisões e resultados relevantes, sem dados privados.

Este documento **não é sincronizado automaticamente**: atualizar quando houver mudanças reais. Antes de confiar no estado, conferir os registros mais recentes de GitHub, Linear e Studio.
