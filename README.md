# Testezinho Roblox — laboratório de Roblox com IA

Projeto experimental de desenvolvimento de experiências Roblox com agentes de IA.

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

## Como preservar o contexto
Registrar decisões técnicas e prompts em commits. Conversas do ChatGPT não geram commits automaticamente: é preciso solicitar a atualização em cada sessão. **Este repositório é público: não salvar tokens, credenciais, arquivos privados ou dados pessoais.**
