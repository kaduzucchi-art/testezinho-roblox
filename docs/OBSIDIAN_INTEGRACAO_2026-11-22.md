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

## GitHub: autenticacao local concluida

O Git Credential Manager 2.9.1 concluiu o login da conta **kaduzucchi-art** pelo navegador no PC-KADU em 22/11/2026. A autenticacao foi confirmada pela listagem de contas e pelo sucesso do teste de envio simulado (sem publicar arquivos nesse teste).

A identidade para commits foi configurada **somente no clone deste vault**: nome de usuario do GitHub com endereco noreply (sem expor email pessoal). Nao foi solicitado, mostrado ou gravado token em notas.

A partir de agora, para publicar uma nota do Obsidian no repositorio publico:
1. Revise a nota e o diff para garantir que nao existam dados pessoais ou segredos.
2. Use Ctrl+P e escolha **Git: Commit-and-sync**, ou abra o controle de versao do plugin.
3. Confirme o commit e o envio. A configuracao **nao faz push ou commit automaticamente**.
4. Se o login expirar, a janela do Git Credential Manager pode solicitar autorizacao novamente.

**Teste real de envio:** este documento foi atualizado no clone Git do vault e enviado pelo proprio Git do PC, verificando o caminho de escrita local -> GitHub. O login GitHub permite publicar manualmente, mas continua sem autorizar a publicacao de notas pessoais.
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
