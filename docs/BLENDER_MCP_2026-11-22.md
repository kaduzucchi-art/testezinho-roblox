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

**Ainda não comprovado:** o Codex chamar uma ferramenta MCP real (por exemplo, listar os objetos da cena). Por isso, não considerar uma modelagem/teste end-to-end validado até esse passo.

## Como testar no Codex

1. Deixe aberta a **segunda** janela do Blender, que iniciou a ponte.
2. Abra **nova conversa** no Codex para carregar a configuração MCP.
3. Envie: **"Conecte ao servidor MCP `blender` e liste os objetos da cena, sem alterar nada. Não use o Roblox Studio nesse teste."**
4. O Blender costuma começar com os objetos Camera, Cube e Light. Confirme o resultado real retornado pelo Codex.
5. Depois disso, é possível criar modelos 3D originais e exportá-los como GLB/FBX para um processo de importação supervisionado no Roblox Studio.

## Cuidados

- Uma conexão local MCP só estará ativa enquanto o Blender com o addon servidor estiver aberto. **Não é um serviço permanente do Windows.**
- O servidor de Blender pode executar ações de modelagem; não permita que agentes modifiquem cenas não salvas sem backup.
- Evite duas instâncias do addon escutando na mesma porta. A instância do Blender que conseguiu abrir a porta é a que receberá as ações do Codex.
- **Blender + MCP é opcional no primeiro MVP ragdoll:** não acrescentar dependências 3D sem uma necessidade concreta.
- Não incluir tokens, dados privados ou caminhos pessoais em repositório público.

**Fonte principal:** https://github.com/ahujasid/mcp-for-blender
