# Testezinho Roblox — laboratório de Roblox com IA

Projeto experimental de desenvolvimento de experiências Roblox com agentes de IA.

## Comece por aqui no modo Chat ou Codex

**Leia primeiro o [CONTEXTO_GERAL.md](CONTEXTO_GERAL.md)**, que centraliza estado, ferramentas, decisões e próximos passos. Em seguida, leia integralmente o [prompt mestre v1.1](prompts/primeiro-playground-ragdoll.md), o [plano da CAR-22](docs/CAR-22_PLANO_MVP_RAGDOLL.md) e os registros de [CAR-23](docs/CAR-23_TESTE_VISUAL_PORTAL.md), [CAR-25](docs/CAR-25_TESTE_RAGDOLL_R15.md) e [aprovação dos testes iniciais](docs/APROVACAO_TESTES_INICIAIS_2026-11-22.md). O planejamento foi aceito para o primeiro teste visual, mas **novas modificações dependem de autorização por etapa**.

O GitHub é o registro contínuo deste projeto. A partir deste plano, salve no repositório os retornos do Codex sobre o projeto, incluindo respostas, planos, decisões e registros de progresso. Como o repositório é público, mantenha dados pessoais, credenciais e informações privadas fora dos commits.

## Objetivo
- Criar protótipos Roblox rápidos e originais, inspirados em mecânicas simples e física divertida.
- Codex como agente principal, Roblox Studio como editor, Superpowers como metodologia de planejamento e testes.
- Colaboração planejada com Cauã via Team Create e GitHub.

## Estado do projeto — 22/11/2026
- Repositório utilizado para documentação, memória de decisões e prompts.
- Primeiro protótipo: arena pequena com física ragdoll.
- Prompt salvo: [prompts/primeiro-playground-ragdoll.md](prompts/primeiro-playground-ragdoll.md).
- **Roblox Studio MCP validado em leitura e escrita controlada:** Codex acessou `Place1`, depois criou e salvou o portal `Workspace.MCP_Demo_Temporaria` na CAR-23. A [captura real](docs/evidencias/CAR-23-portal.jpg) e o [relatório com backup](docs/CAR-23_TESTE_VISUAL_PORTAL.md) estão no GitHub. O **visual do portal foi aprovado**; na CAR-25, o Codex também testou ragdoll em Play solo.
- Ambiente de ferramentas concluído: Superpowers, Roblox Dev Skill, 23 Roblox Skills, Rokit 1.2.0, Rojo 7.7.1 (CLI + plugin Studio), Selene 0.32.0 e StyLua 2.6.0. Ver [relatório do ambiente](docs/AMBIENTE_ROBLOX_IA_2026-11-22.md).
- **Testes exploratórios iniciais aprovados pelo usuário:** ragdoll R15 testado pessoalmente, portal futurista aprovado e preservado. [Registro de aprovação](docs/APROVACAO_TESTES_INICIAIS_2026-11-22.md). A próxima etapa (CAR-24) ainda depende de autorização específica; confira o [contexto geral](CONTEXTO_GERAL.md).

## Projeto Roblox salvo no GitHub

- **[Place1.rbxl](studio/Place1.rbxl)** — mapa atual com o portal aprovado e o teste isolado de ragdoll R15. O arquivo binário foi enviado ao GitHub.
- **[Backups do Studio](studio/backups/)** — snapshots pré-CAR-23 e pré-CAR-25, preservados e versionados.
- **[Manifesto de arquivos e hashes](studio/README.md)** — instruções de abertura e limitações. A restauração dos backups em outra sessão ainda não foi testada.
- **[Código Luau em `src/`](src/)** — cliente e servidor do ragdoll continuam disponíveis separadamente para revisão.
- A aprovação inicial está registrada no [documento de aceite](docs/APROVACAO_TESTES_INICIAIS_2026-11-22.md). **CAR-22, CAR-23 e CAR-25 constam como Done no Linear.** O jogo completo ainda não foi implementado.

## Apresentação e setup de outro computador

- **[Prompt RDC por etapas (A–J)](prompts/RDC_CONFIGURAR_AMBIENTE_COLABORADOR.md):** inventário inicial, instalação condicional de Git, Roblox Studio MCP, Codex, Superpowers, 24 skills Roblox, Rokit, Rojo, Selene, StyLua, Blender MCP, Obsidian Git e integração GitHub. **Se um programa já está instalado e funcionando, ele deve ser preservado**, especialmente o Obsidian e vaults existentes.
- Antes de qualquer ação do RDC em outro computador, confirmar autorização do dono do dispositivo e não copiar caminhos nem credenciais de outros perfis.
- O jogo ainda **não possui nome definitivo**; `testezinho-roblox` é apenas o nome do repositório de trabalho.

## Obsidian — central de conhecimento

- **Obsidian 1.15.1 + plugin Obsidian Git 2.43.0** instalados no PC e configurados como vault **`testezinho-roblox`**, espelhando este mesmo repositório.
- **[OBSIDIAN_INICIO.md](OBSIDIAN_INICIO.md):** painel de navegação das notas, decisões, prompt e tarefas.
- **[Documentação da integração](docs/OBSIDIAN_INTEGRACAO_2026-11-22.md):** pull no início + a cada 10 minutos, envio manual de commits, `.obsidian/` fora do repositório público.
- **Atenção:** a autenticação do GitHub no PC ainda é necessária para enviar notas diretamente pelo Obsidian Git. O clone já recebe atualizações. Não inserir dados pessoais neste vault público.

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
- O planejamento CAR-22, o portal CAR-23 e o ragdoll R15 CAR-25 foram implementados/documentados nas partes pertinentes; o usuário **aprovou ambos os testes iniciais**. A arena CAR-24, plataforma CAR-26 e HUD definitivo CAR-27 ainda não começaram. O backlog inclui CAR-32 (Blender futuro).
- O Linear é o acompanhamento de tarefas; o GitHub é a referência para prompts, código e documentação. Cauã ainda não consta como membro do Linear, portanto não recebeu atribuições.
- Não confundir planejamento cadastrado com código implementado ou funcionalidade testada. Consulte o [prompt mestre](prompts/primeiro-playground-ragdoll.md).

## Como preservar o contexto
Registrar decisões técnicas e prompts em commits. Os retornos do Codex referentes ao projeto devem ser registrados em commits, conforme a orientação de continuidade acima. **Este repositório é público: não salvar tokens, credenciais, arquivos privados ou dados pessoais.**
