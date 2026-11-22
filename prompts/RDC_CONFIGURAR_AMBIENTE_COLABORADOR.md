# PROMPT REUTILIZÁVEL — RDC | Preparar um PC para desenvolver Roblox com IA

**Uso:** copiar a seção **PROMPT PRINCIPAL** para um assistente conectado ao **Remote Desktop Commander (RDC)** em um computador Windows *autorizado pelo próprio dono*. Usar as **etapas isoladas** em sequência quando preferir acompanhar cada parte.  
**Data do modelo:** 22/11/2026. Versões exatas podem mudar. **Não** copiar caminhos, credenciais, perfis ou configurações de outro computador.

## PROMPT PRINCIPAL — copiar e colar

Quero preparar ESTE computador Windows para trabalhar em um projeto Roblox com IA, usando Remote Desktop Commander, Roblox Studio, Codex, GitHub, Superpowers, skills de Roblox, ferramentas de Luau e, se úteis, Blender e Obsidian. O repositório de referência é:
https://github.com/kaduzucchi-art/testezinho-roblox

**Regras obrigatórias antes de qualquer instalação:**
1. Verifique que o RDC está conectado **ao meu PC autorizado**, e mostre o nome do dispositivo. Não controle outras máquinas.
2. Faça primeiro um inventário **somente leitura**: programas já instalados, versões, processos e pastas relevantes; presença de Git, Codex, Roblox Studio, MCPs, skills, Rokit/Rojo/Selene/StyLua, Blender, Obsidian e repositório Git. **Não reinstale** itens presentes e saudáveis. Se o Obsidian já estiver instalado, **não baixe outra cópia**: abra/configure o existente. Preserve vaults e notas anteriores.
3. Apresente uma tabela `já está pronto / precisa configurar / opcional / não disponível` e execute **uma etapa de cada vez**, confirmando resultados. Use instalação silenciosa/headless quando suportada, com pacotes oficiais ou projetos verificados. Mostre links, versões e origens. Não utilize comandos obscuros, scripts remotos não auditados ou instaladores de terceiros aleatórios.
4. **Não altere, publique ou apague nenhum jogo no Roblox Studio** neste preparo. Não reescreva a configuração completa do Codex; adicione apenas entradas necessárias, preservando MCPs já registrados. Faça cópia de segurança antes de editar configurações.
5. **Não solicite que eu cole tokens, senhas ou códigos de autenticação no chat.** Para autenticação GitHub, abra o fluxo oficial do navegador/Git Credential Manager e deixe que eu autorize pessoalmente. Não mude permissões de repositórios, não faça push para a branch principal sem autorização e não execute tarefas em nome de outros usuários.
6. Não faça compras, ative serviços pagos, exponha informações pessoais, sincronize vaults privados com repositórios públicos nem configure publicação automática de notas.
7. Ao fim de cada etapa, diga exatamente o que foi comprovado por testes e o que ainda depende de verificação humana. Se algum instalador falhar, diagnostique sem modificar sistemas não relacionados.

**Ordem:**
A. Diagnóstico e segurança.
B. Git for Windows e acesso de leitura ao GitHub.
C. Roblox Studio + Codex + MCP oficial `Roblox_Studio` + teste somente leitura.
D. Superpowers + Roblox Dev Skill + Roblox Skills (quando compatíveis).
E. Rokit + Rojo (CLI e plugin Studio) + Selene + StyLua.
F. Blender + Blender MCP (**opcional; só se aprovado**).
G. Obsidian + vault do repositório + Obsidian Git (**opcional; reaproveite instalação existente**).
H. GitHub autenticação do PC, fluxo de contribuições e revisão de segurança.
I. Plugins complementares **somente se necessários**: Linear, Context7, Figma, fal; REA não é necessário para criar o jogo.
J. Checklist final: ferramentas em execução, backup, comandos básicos, integração, Git limpo e instruções de uso.

**Critério de sucesso:** Codex consegue listar os objetos de um `Workspace` aberto pelo MCP Roblox em modo leitura; Git consegue fazer `fetch/pull` do repositório; skills e ferramentas respondem a comandos de versão; se Blender for instalado, MCP lista `Camera/Cube/Light` sem editar; se Obsidian for configurado, abre `CONTEXTO_GERAL.md`, recebe atualizações do GitHub e mantém envio manual.

Antes de iniciar a primeira instalação, **mostre o inventário e explique o plano**.

---

## ETAPA A — Diagnóstico inicial (executar primeiro)

> RDC, conecte ao computador autorizado. Em modo apenas leitura, verifique Windows, `winget`, Git, Codex, Roblox Studio, `Roblox_Studio` MCP, Superpowers, skills Roblox, Rokit, Rojo, Selene, StyLua, Blender, Blender MCP, Obsidian e repositórios locais. Mostre as versões detectadas, o que falta e os caminhos de instalação sem revelar dados sensíveis. Não instale nada ainda.

**Aprovação:** conferir inventário. Se algo já funciona, pule a instalação correspondente.

## ETAPA B — Git e repositório

> RDC, instale **Git for Windows** via fonte oficial/winget **apenas se não estiver instalado**; verifique `git --version`. Clone o repositório público `kaduzucchi-art/testezinho-roblox` em uma **nova pasta própria**, sem sobrescrever outra. Verifique `README.md`, `CONTEXTO_GERAL.md`, `prompts/primeiro-playground-ragdoll.md` e `studio/Place1.rbxl`. Use a branch `main` apenas para leitura, até que haja autorização de colaboração e estratégia de branches. Não solicite token.

**Se o repo já existir:** verificar `origin`, branch, conflitos e mudanças não commitadas antes de qualquer `pull`.

## ETAPA C — Codex + Roblox Studio MCP

> RDC, verifique se **Roblox Studio** e **Codex** já existem. Instale/atualize via canais oficiais somente se necessário. No Studio abra uma experiência de teste autorizada e encontre **Assistente → … → Gerenciar Servidores MCP → Ativar Studio como servidor MCP**; se precisar de clique manual, indique exatamente onde. Tente a conexão rápida para Codex quando disponível, ou configure o servidor `Roblox_Studio` pelo método oficial compatível com a versão atual (no Windows, launcher `%LOCALAPPDATA%\Roblox\mcp.bat` quando existir). Se adequado, instale o plugin oficial `Roblox/roblox-studio-agent-plugin` no Codex, preservando plugins existentes. Reinicie o cliente se necessário. **Teste apenas a leitura:** listar objetos do Workspace e identificar Place; **não altere nada**. Documentação principal: https://create.roblox.com/docs/studio/mcp .

## ETAPA D — Superpowers e skills Roblox

> RDC, confira primeiro se Superpowers está habilitado no Codex. Se faltar, instale pela integração/repositório verificado `obra/superpowers` e valide o acesso a `brainstorming`, `writing-plans`, `systematic-debugging` e `verification-before-completion` na versão atual. Confira também as skills existentes. Adicione `MSayib/roblox-dev-skill` e os módulos pertinentes de `EL4CTEO/roblox-skills` apenas quando compatíveis e de origem verificada, respeitando arquivos anteriores. Não duplique skills; não assuma que qualquer nome de skill é uma ferramenta ativa sem testá-lo. Use as skills para planejar/testar, não como licença para modificar o jogo.

## ETAPA E — Ferramentas Luau

> RDC, verifique `rokit --version`, `rojo --version`, `selene --version`, `stylua --version`. Instale **Rokit** de release oficial `rojo-rbx/rokit` apenas se faltar. Gerencie pelo Rokit as ferramentas `rojo-rbx/rojo`, `Kampfkarren/selene` e `JohnnyMorganz/StyLua` depois de confirmar fontes e compatibilidade. Instale o plugin Rojo no Roblox Studio quando apropriado; reinicie o Studio após salvar o lugar. **Não execute `rojo serve` nem sincronize instâncias em projetos existentes sem backup e plano de impacto.** Valide versões com comandos sem escrever no jogo.

## ETAPA F — Blender opcional (perguntar antes)

> RDC, verifique se o Blender já está instalado e sua versão. **Pergunte se preciso de modelagem 3D agora.** Se não, pule. Se aprovado, instale Blender oficial apenas se faltar e configure **um** servidor MCP confiável compatível com Codex (referência usada no projeto: `ahujasid/mcp-for-blender`). Mantenha host apenas local (ex.: `127.0.0.1`), modo de segurança ativo e preserve outras configurações MCP. Se a integração exigir habilitar addon no Blender, faça e verifique. **Teste somente leitura** listando `Camera`, `Cube` e `Light`. Não salve por cima de cena existente nem execute Python arbitrário sem aprovação.

## ETAPA G — Obsidian opcional (reaproveitar instalação existente!)

> RDC, primeiro determine se **Obsidian já existe**. Se existir, **não reinstale**. Preserve todos os vaults existentes e crie/abra um vault SEPARADO chamado, se estiver livre, `testezinho-roblox`, usando a pasta do clone do GitHub. Se não existir e eu quiser, instale pela fonte oficial. Confira o plugin comunitário **Obsidian Git**; instale/ative somente se faltar. Configure `pull` ao iniciar e a cada 10 minutos, mas **desative auto-commit e auto-push**. Garanta `.obsidian/` no `.gitignore` antes de qualquer commit. Abra `OBSIDIAN_INICIO.md` e `CONTEXTO_GERAL.md`. Nunca mova notas pessoais para um repositório público. Faça teste real de `git pull --ff-only`, sem sobrescrever alterações locais. Se algo já estiver configurado, apenas verifique.

## ETAPA H — Autenticação GitHub e colaboração

> RDC, verifique se Git Credential Manager existe, se a conta GitHub está autenticada e se `git push --dry-run` funciona **sem enviar dados**. Se faltar autenticação, inicie `git credential-manager github login --browser` e deixe a autorização no navegador comigo. Configure nome de autor e e-mail `noreply` **somente no repositório local**, após confirmar os dados corretos, não globalmente. Não presuma que este usuário pode escrever no repositório de outra pessoa: **sem acesso de colaborador, use clone de leitura, fork ou branch autorizada**. Para verificar push real, só envie um arquivo de teste inofensivo e revisado, em branch aprovada, **após consentimento específico**. Nunca armazene tokens em notas.

## ETAPA I — Serviços extras, somente conforme necessidade

> RDC, verifique se há conexão autorizada aos plugins **GitHub, Linear, Context7, Figma e fal** no ambiente em que serão usados; a instalação no ChatGPT não implica instalação no Codex. Instale/sugira conexão somente quando o usuário quiser. **Linear** acompanha tarefas, **Context7** complementa documentação oficial do Roblox, **Figma** apoia UI, **fal** é opcional para geração de assets e pode ter custos. **REA** não faz parte do fluxo normal de criação no Roblox. Não crie workspace, convide pessoas ou ative serviços pagos automaticamente.

## ETAPA J — Auditoria final / handoff

> RDC, entregue tabela com ferramenta, versão, estado (`existente`, `instalado`, `conectado`, `não testado`, `opcional`), evidência e observações. Mostre quais MCPs estão registrados e quais realmente responderam, onde está o clone Git, como abrir o vault do Obsidian e quais passos requerem minha ação. Confirme que o mapa Roblox permaneceu sem alteração, que repositórios externos não foram sobrescritos e que o Git está limpo. Não faça push nem publique o jogo sem nova autorização.

---

## Memória do projeto para o Codex (prompt curto)

> Leia integralmente **`CONTEXTO_GERAL.md`** e **`prompts/primeiro-playground-ragdoll.md`** no repositório `kaduzucchi-art/testezinho-roblox`, branch `main`. Consulte a tarefa atual no Linear, diferencie o que já foi comprovado do que está pendente e peça aprovação antes de modificar a experiência. Preserve o portal e o ragdoll R15 já aprovados. Registre alterações relevantes no GitHub sem segredos.

**Nota:** o jogo ainda **não tem nome comercial decidido**. `testezinho-roblox` é apenas o nome técnico do repositório. Não confundir backup local, clone Git, publicação do jogo, serviço MCP e controle de tarefas.
