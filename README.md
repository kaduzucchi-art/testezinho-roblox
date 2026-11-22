# Testezinho Roblox — laboratório de Roblox com IA

Projeto experimental de desenvolvimento de experiências Roblox com agentes de IA.

## Comece por aqui no modo Chat

Antes de opinar sobre o MVP ou ajudar Carlos a decidir se aprova, leia por inteiro o [prompt mestre v1.1](prompts/primeiro-playground-ragdoll.md) e depois o [plano da CAR-22](docs/CAR-22_PLANO_MVP_RAGDOLL.md), na branch `main`. Use os dois arquivos como contexto para revisar a proposta e deixe a decisão de aprovação com Carlos. A implementação depende da aprovação explícita dele.

O GitHub é o registro contínuo deste projeto. A partir deste plano, salve no repositório os retornos do Codex sobre o projeto, incluindo respostas, planos, decisões e registros de progresso. Como o repositório é público, mantenha dados pessoais, credenciais e informações privadas fora dos commits.

## Objetivo
- Criar protótipos Roblox rápidos e originais, inspirados em mecânicas simples e física divertida.
- Codex como agente principal, Roblox Studio como editor, Superpowers como metodologia de planejamento e testes.
- Colaboração planejada com Cauã via Team Create e GitHub.

## Estado do projeto — 22/11/2026
- Repositório utilizado para documentação, memória de decisões e prompts.
- Primeiro protótipo: arena pequena com física ragdoll.
- Prompt salvo: [prompts/primeiro-playground-ragdoll.md](prompts/primeiro-playground-ragdoll.md).
- **Conexão MCP de ponta a ponta confirmada em 22/11/2026:** Codex acessou `Place1` e listou `Camera`, `Baseplate`, `Baseplate.Texture`, `Terrain`, `SpawnLocation` e `SpawnLocation.Decal` em modo somente leitura. A capacidade de escrita ainda não foi testada. Consulte [o status da instalação](docs/STATUS_INSTALACAO_2026-11-22.md).
- Ambiente de ferramentas concluído: Superpowers, Roblox Dev Skill, 23 Roblox Skills, Rokit 1.2.0, Rojo 7.7.1 (CLI + plugin Studio), Selene 0.32.0 e StyLua 2.6.0. Ver [relatório do ambiente](docs/AMBIENTE_ROBLOX_IA_2026-11-22.md).
- **Próxima etapa:** use o [prompt mestre atualizado de ragdoll](prompts/primeiro-playground-ragdoll.md) e peça primeiro o plano para aprovação, antes de editar o place.

## Blender — pipeline 3D opcional

- **Blender 5.3.0 + MCP for Blender** instalado no PC-KADU e registrado no Codex em 22/11/2026.
- Addon habilitado; servidor local em `127.0.0.1:9876` confirmou conexao TCP na segunda janela do Blender, com modo de segurança habilitado.
- A leitura da cena via MCP do Codex foi confirmada. Escrita e modelagem seguem pendentes de teste. [Relatório detalhado](docs/BLENDER_MCP_2026-11-22.md).
- Blender é opcional no protótipo ragdoll, recomendado para modelos 3D originais em uma etapa posterior.

## Ferramentas
1. Roblox Studio MCP oficial: https://create.roblox.com/docs/studio/mcp
2. Roblox Studio Agent Plugin: https://github.com/Roblox/roblox-studio-agent-plugin
3. Superpowers: https://github.com/obra/superpowers
4. Opcionais posteriores: Roblox Dev Skill, Roblox Skills, Rojo, Rokit, Selene, StyLua e TestEZ.
5. REA fica fora do fluxo principal de desenvolvimento.

## Jogos como referência (não copiar recursos)
- Throw a Seed: https://www.roblox.com/pt/games/129081220403721/Throw-a-Seed
- Realistic Ragdoll MMA: https://www.roblox.com/pt/games/124780003623150/Realistic-Ragdoll-MMA
- Hyper-Realistic Ragdoll: https://www.roblox.com/pt/games/101277003916102/Hyper-Realistic-Ragdoll
- Do Not Stop: https://www.roblox.com/pt/games/116779912472448/Do-Not-Stop
- Throw Food For Animals: https://www.roblox.com/pt/games/120219252362013/Throw-Food-For-Animals

## Gerenciamento de tarefas (Linear)

- [Projeto: Testezinho Roblox — AI Ragdoll Playground](https://linear.app/carloszucchi/project/testezinho-roblox-ai-ragdoll-playground-8cd1127081c2).
- Criado em 22/11/2026 com três marcos: **M0 — Planejamento aprovado**, **M1 — Protótipo jogável**, **M2 — Testes e entrega técnica**.
- Foram cadastradas 11 tarefas (`CAR-21` a `CAR-31`): apenas `CAR-21` (validação de leitura MCP) está concluída; o planejamento com Superpowers (`CAR-22`) está como Todo e todo o trabalho de gameplay permanece pendente.
- O Linear é o acompanhamento de tarefas; o GitHub é a referência para prompts, código e documentação. Cauã ainda não consta como membro do Linear, portanto não recebeu atribuições.
- Não confundir planejamento cadastrado com código implementado ou funcionalidade testada. Consulte o [prompt mestre](prompts/primeiro-playground-ragdoll.md).

## Como preservar o contexto
Registrar decisões técnicas e prompts em commits. Os retornos do Codex referentes ao projeto devem ser registrados em commits, conforme a orientação de continuidade acima. **Este repositório é público: não salvar tokens, credenciais, arquivos privados ou dados pessoais.**
