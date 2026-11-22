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

## Ainda não confirmado

- A disponibilidade real das ferramentas MCP no início de uma nova conversa do Codex ainda não foi validada. Uma checagem não interativa de leitura não concluiu e foi encerrada sem alterar o jogo.
- Superpowers e demais skills comunitárias não foram instalados localmente nesta etapa; são adicionais opcionais.

## Próximos passos do usuário no Studio

1. Abra um lugar no Roblox Studio.
2. Acesse **Assistant → ... → Settings → MCP Servers**.
3. O Studio já mostrou **`MCP Ready`**; mantenha o servidor habilitado.
4. O servidor `Roblox_Studio` já está registrado no Codex; não crie outro duplicado. Se a conexão não iniciar, reinicie o Codex ou abra uma conversa nova.
5. Peça: **“Liste as janelas do Roblox Studio abertas; não altere nada.”**
6. Só depois utilize [o prompt ragdoll](../prompts/primeiro-playground-ragdoll.md) e salve uma cópia do lugar antes de mudanças maiores.

Fontes oficiais:
- https://github.com/Roblox/roblox-studio-agent-plugin
- https://create.roblox.com/docs/studio/mcp

**Não registrar senhas, tokens de API ou dados privados neste repositório público.**
