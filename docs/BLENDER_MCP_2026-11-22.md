# Blender + Codex MCP — instalação em 22/11/2026

## Resultado verificado no PC-KADU

- **Blender:** versão **5.3.0**, instalada usando o pacote oficial `BlenderFoundation.Blender` do winget; executável respondeu a `--version`.
- **Gerenciador:** `uvx 0.13.9`, instalado via pacote `astral-sh.uv`.
- **MCP for Blender:** pacote da comunidade [ahujasid/mcp-for-blender](https://github.com/ahujasid/mcp-for-blender), instalado usando `uvx --python 3.11 mcp-for-blender install-addon`.
- **Addon:** `blender_mcp.py` instalado na pasta de addons do Blender **5.3**; foi habilitado por script em modo background, e a preferência foi salva com sucesso.
- **Codex:** servidor MCP global **`blender`** registrado e marcado como **enabled** sem remover `Roblox_Studio` nem `rea`. O Codex usa o executável `uvx` instalado e inicia `mcp-for-blender`.
- **Configuração do MCP:** `BLENDER_HOST=127.0.0.1`, `BLENDER_PORT=9876`, `BLENDER_MCP_SAFE_MODE=1`. Este modo restringe scripts potencialmente arriscados.
- **Teste realizado:** uma segunda instância do Blender iniciou automaticamente a ponte. A porta **127.0.0.1:9876** apresentou estado **Listen** e uma conexão TCP de teste foi bem-sucedida.
- **Sessão e janelas:** durante a configuração, uma primeira janela do Blender com cena não salva foi inicialmente preservada e uma segunda janela foi aberta para teste. **Na verificação final, apenas a segunda janela (a que executa o MCP) aparecia entre os processos ativos; não foi executado comando explícito para fechar ou salvar a primeira.**
- **Configuração do Codex:** foi feita uma cópia de segurança do arquivo de configuração antes de registrar o servidor.

## O que está comprovado — e o que ainda falta

**Comprovado:** Blender instalado, addon habilitado, servidor `blender` configurado no Codex, socket local respondendo e MCPs anteriores preservados.

**Teste de ponta a ponta de leitura confirmado pelo usuário:** o Codex executou uma consulta MCP real à instância Blender 5.3.0 (PID `5836`; addon reportado como 2.0), identificou a cena não salva `Scene` em Modo Objeto, `Cube` ativo e os objetos `Camera`, `Cube` e `Light`, com posições, rotações e propriedades. Nenhuma cena foi modificada. **Ainda não comprovado:** escrita/modelagem, execução de `execute_blender_code` sob modo de segurança, geração externa 3D, exportação e importação no Roblox.

## Próxima etapa no Codex (após teste de leitura já validado)

1. O teste de listagem de objetos via MCP **já foi concluído**, e não precisa ser repetido sem motivo.
2. No primeiro MVP ragdoll, prefira Parts e ferramentas nativas do Roblox Studio; **Blender não é dependência**.
3. Quando algum asset 3D original for necessário, planeje o modelo e peça autorização antes de alterar a cena no Blender. Salve o arquivo `.blend` novo e preservado.
4. Verifique quais ferramentas de modelagem estão realmente permitidas pelo modo de segurança antes de executar scripts Python; nunca desative proteções automaticamente.
5. Exporte preferencialmente GLB/FBX, teste a importação no Roblox e documente autoria, malha, escala, colisões e desempenho.
6. Consulte o [prompt mestre v1.1](../prompts/primeiro-playground-ragdoll.md) e a tarefa [CAR-32](https://linear.app/carloszucchi/issue/CAR-32/preparar-pipeline-de-assets-blender-roblox-studio-futuro).

## Cuidados

- Uma conexão local MCP só estará ativa enquanto o Blender com o addon servidor estiver aberto. **Não é um serviço permanente do Windows.**
- O servidor de Blender pode executar ações de modelagem; não permita que agentes modifiquem cenas não salvas sem backup.
- Evite duas instâncias do addon escutando na mesma porta. A instância do Blender que conseguiu abrir a porta é a que receberá as ações do Codex.
- **Blender + MCP é opcional no primeiro MVP ragdoll:** não acrescentar dependências 3D sem uma necessidade concreta.
- Não incluir tokens, dados privados ou caminhos pessoais em repositório público.

**Fonte principal:** https://github.com/ahujasid/mcp-for-blender
