# Ferramentas Roblox + IA — configuração de 22/11/2026

## Status após instalação headless no Windows

| Ferramenta | Versão / evidência | Status |
| --- | --- | --- |
| Roblox Studio | Aplicativo instalado; indicador MCP Ready verificado anteriormente | Configurado |
| Roblox Studio Agent Plugin no Codex | 0.2.3, instalado e habilitado | Confirmado |
| Servidor MCP `Roblox_Studio` | Registrado em `~/.codex/config.toml` | Conexão e leitura do Workspace confirmadas pelo Codex |
| Superpowers | 7.0.1, instalado e habilitado no Codex | Confirmado |
| Roblox Dev Skill | `~/.agents/skills/roblox-dev-skill/SKILL.md` | Instalado |
| Roblox Skills (EL4CTEO) | 23 skills individuais em `~/.agents/skills/` | Instaladas |
| Rokit | 1.2.0 | Executável verificado |
| Rojo CLI | 7.7.1, gerenciado globalmente por Rokit | Executável verificado |
| Plugin Rojo para Roblox Studio | `RojoManagedPlugin.rbxm` na pasta local de plugins do Studio | Arquivo instalado; reiniciar o Studio para carregar |
| Selene | 0.32.0, gerenciado por Rokit | Executável verificado |
| StyLua | 2.6.0, gerenciado por Rokit | Executável verificado |
| REA | Já configurado no Codex antes desta etapa | Preservado |
| Git for Windows | 2.56.1 | Instalado anteriormente e verificado |

## Como começar

1. Reiniciar o **Codex** para ele reconhecer as skills recém-instaladas.
2. Reiniciar o **Roblox Studio** quando conveniente, para carregar o plugin Rojo; antes disso, salvar o lugar aberto.
3. **Conexão de leitura já confirmada:** Codex identificou Place1 e objetos do Workspace por MCP.
4. Agora solicitar ao Codex o plano baseado no prompt mestre em [`prompts/primeiro-playground-ragdoll.md`](../prompts/primeiro-playground-ragdoll.md).
5. **Não iniciar `rojo serve` nem sincronizar sobre um lugar existente sem plano e backup**, pois a sincronização pode modificar a estrutura do jogo.

## Instalação e manutenção

- Skills originais obtidas dos projetos [MSayib/roblox-dev-skill](https://github.com/MSayib/roblox-dev-skill) e [EL4CTEO/roblox-skills](https://github.com/EL4CTEO/roblox-skills).
- Rojo, Selene e StyLua gerenciados pelo [Rokit](https://github.com/rojo-rbx/rokit), no manifesto global `~/.rokit/rokit.toml`.
- As instalações foram feitas no perfil do usuário; nenhuma alteração no Workspace do Roblox Studio foi executada neste procedimento.
- Para upgrades, revisar as mudanças das ferramentas e atualizar conscientemente; não atualizar dependências em massa sem testar.

## Observação

A comunicação MCP de leitura de ponta a ponta foi confirmada pelo Codex. Escrita, testes de gameplay e sincronização do código ainda não foram validados neste projeto.

O GitHub não recebe commits automaticamente a cada mensagem; atualizar a documentação quando houver nova atividade relevante, mediante acesso confirmado.
