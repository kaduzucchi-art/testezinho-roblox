# Estado da instalação — 22 de novembro de 2026

## Confirmado no PC Windows

- Roblox Studio instalado e aberto; processo respondendo.
- Roblox Studio inclui o launcher local `mcp.bat` e o executável do MCP `StudioMCP.exe`.
- Codex para Windows instalado (Codex CLI embutido, versão `0.171.0-alpha.13`). O comando `codex` não estava disponível no PATH da sessão, mas o executável da aplicação funcionou.
- Git for Windows `2.56.1.windows.1` instalado e verificado.
- Marketplace oficial `Roblox/roblox-studio-agent-plugin` adicionado ao Codex com êxito.
- Plugin `roblox-studio@roblox-studio` versão `0.2.3` instalado e habilitado.
- Servidor MCP global **`Roblox_Studio`** registrado e habilitado na configuração do Codex, usando `cmd.exe /c "cd /d %LOCALAPPDATA%\Roblox && .\mcp.bat"`.
- A configuração já existente do **REA** foi preservada.

## Confirmação adicional de 22/11/2026

- O indicador no canto inferior direito do Roblox Studio foi observado por acesso remoto e mostrou **`MCP Ready`**. Isso confirma que o Studio está pronto para uma conexão MCP.

## Teste de ponta a ponta confirmado — 22/11/2026

- O usuário compartilhou o resultado do Codex confirmando acesso ao MCP `Roblox_Studio` e ao projeto **Place1**, em modo de edição.
- Leitura dos objetos do `Workspace` concluída: `Camera`, `Baseplate`, `Baseplate.Texture`, `Terrain`, `SpawnLocation`, `SpawnLocation.Decal`.
- O teste foi executado em **modo somente leitura**. Nenhum objeto foi modificado.
- O acesso de leitura de ponta a ponta está confirmado. A edição por Codex ainda não foi testada nesse projeto.
- Superpowers, Roblox Dev Skill, 23 Roblox Skills, Rojo, Rokit, Selene e StyLua já foram instalados; ver [relatório do ambiente](AMBIENTE_ROBLOX_IA_2026-11-22.md).

## Próximos passos do usuário no Studio

1. Abra um lugar no Roblox Studio.
2. Acesse **Assistant → ... → Settings → MCP Servers**.
3. O Studio já mostrou **`MCP Ready`**; mantenha o servidor habilitado.
4. O servidor `Roblox_Studio` já está registrado no Codex; não crie outro duplicado. Se a conexão não iniciar, reinicie o Codex ou abra uma conversa nova.
5. **Teste de listagem concluído** pelo Codex. Salve uma cópia do lugar antes de mudanças maiores.
6. Quando decidir iniciar a implementação, use [o prompt ragdoll](../prompts/primeiro-playground-ragdoll.md) e peça um plano antes de alterar o mapa.

Fontes oficiais:
- https://github.com/Roblox/roblox-studio-agent-plugin
- https://create.roblox.com/docs/studio/mcp

**Não registrar senhas, tokens de API ou dados privados neste repositório público.**
