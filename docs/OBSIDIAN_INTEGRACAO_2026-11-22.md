# Obsidian + GitHub — vault do projeto Roblox

**Instalado e configurado no PC-KADU em 22/11/2026.**

## O que foi feito

- Obsidian **1.15.1** instalado pelo winget (pacote `Obsidian.Obsidian`).
- Repositório público `kaduzucchi-art/testezinho-roblox` clonado na pasta local **`%USERPROFILE%\Documents\Obsidian\testezinho-roblox`**, branch `main`.
- Pasta clonada registrada e aberta como **vault `testezinho-roblox`** no Obsidian. A janela do aplicativo reconheceu o vault.
- Plugin comunitário **Obsidian Git 2.43.0** instalado a partir do release [Vinzent03/obsidian-git](https://github.com/Vinzent03/obsidian-git/releases/tag/2.43.0), verificado no painel de plugins como **ativado**.
- Sincronização de **leitura** preparada: **pull no início** e **pull automático a cada 10 minutos** (somente enquanto o Obsidian e o plugin estiverem ativos).
- **Auto-commit e auto-push desabilitados**. Isso evita que notas privadas sejam publicadas automaticamente neste repositório **público**.
- `.obsidian/` incluído no `.gitignore` para guardar configurações locais e arquivos de plugins fora do GitHub.
- Criada a página de entrada [`OBSIDIAN_INICIO.md`](../OBSIDIAN_INICIO.md), com links para memória, prompt, decisões, capturas, plano e tarefas.
- O clone foi atualizado com sucesso por `git pull --ff-only`, sem mudanças locais pendentes.

## Limite importante: autorização para enviar commits

A primeira verificação **não interativa e sem escrever no remoto** (`git push --dry-run origin main`) **não conseguiu autenticar**. O Git Credential Manager está instalado, mas ainda falta uma autorização de usuário GitHub nesse computador. **Não foi criado nem pedido nenhum token.**

Para permitir **envio** de edições locais pelo Obsidian Git:
1. Abra o Obsidian no vault `testezinho-roblox`.
2. Depois de modificar uma nota **pública**, revise suas alterações.
3. Execute o comando **Git: Commit-and-sync** pela paleta de comandos (`Ctrl+P`).
4. Na primeira vez, o Git Credential Manager pode solicitar login/autorização do GitHub. Se falhar, conclua a autenticação do GitHub no PC e repita. Nunca coloque tokens em notas ou mensagens.
5. **Não é necessário autenticar para receber atualizações do repositório público.**

Alternativamente, o ChatGPT pode atualizar o GitHub usando sua conexão já autorizada; o Obsidian recebe essas mudanças via pull. A cópia local e o GitHub não são uma sincronização instantânea: dependem dos pulls e pushes concluídos.

## Uso diário

- Abra [`OBSIDIAN_INICIO.md`](../OBSIDIAN_INICIO.md) para navegar entre as notas. Use [`CONTEXTO_GERAL.md`](../CONTEXTO_GERAL.md) como memória principal que o Codex e o ChatGPT devem ler antes de novas tarefas.
- Receber as atualizações do Codex: o Obsidian Git fará pulls automáticos quando possível, ou pressione `Ctrl+P` → **Git: Pull**.
- Enviar uma edição feita por você: revise o diff no painel **Git: Open source control view** e escolha **Git: Commit-and-sync** (após autorizar GitHub no PC).
- Resolva conflitos de merge antes de enviar; não force push.
- Para notas **pessoais**, use outro vault **privado**. Não grave informações sensíveis neste repositório público.

## Estado do projeto ao configurar

A fase de testes exploratórios foi aprovada pelo usuário. [CAR-22, CAR-23 e CAR-25](https://linear.app/carloszucchi/project/testezinho-roblox-ai-ragdoll-playground-8cd1127081c2) estão concluídas. O portal foi preservado; o teste R15 foi aprovado; a próxima etapa do jogo depende de nova autorização.

## Links técnicos

- [Obsidian — documentação](https://help.obsidian.md/)
- [Obsidian Git — plugin](https://github.com/Vinzent03/obsidian-git)
- [Obsidian Git — instalação](https://publish.obsidian.md/git-doc/Installation)
