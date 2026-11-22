# 🛰️ Central Roblox — Testezinho

> **Este vault é a cópia local do repositório GitHub** [testezinho-roblox](https://github.com/kaduzucchi-art/testezinho-roblox). A documentação do projeto é pública. Não adicione senhas, informações privadas nem anotações pessoais aqui.

## 🧠 Memória e decisões

- **[[CONTEXTO_GERAL|Contexto geral do projeto]]** — comece por aqui em novas sessões.
- **[[prompts/primeiro-playground-ragdoll|Prompt mestre: Ragdoll Playground]]** — requisitos, limites e orientação ao Codex.
- **[[docs/CAR-22_PLANO_MVP_RAGDOLL|Plano técnico do MVP]]** — arquitetura e etapas.
- **[[docs/APROVACAO_TESTES_INICIAIS_2026-11-22|Aprovação dos testes iniciais]]** — resultados aceitos.

## 🕹️ O que já foi construído

- **[[docs/CAR-23_TESTE_VISUAL_PORTAL|Portal futurista]]** — modelo azul/roxo aprovado visualmente.
- **[[docs/CAR-25_TESTE_RAGDOLL_R15|Ragdoll R15]]** — teste de cair/levantar aprovado; fontes em [servidor](src/server/RagdollR15TesteServidor.server.luau) e [cliente](src/client/RagdollR15TesteCliente.client.luau).
- **[Place1.rbxl](studio/Place1.rbxl)** — snapshot do mapa com os dois recursos; veja [[studio/README|instruções e backups]].

## 🧰 Ferramentas e integrações

- [[docs/AMBIENTE_ROBLOX_IA_2026-11-22|Ambiente Codex e Roblox]]
- [[docs/BLENDER_MCP_2026-11-22|Blender MCP]]
- [[docs/CONTEXT7_NO_DESENVOLVIMENTO|Context7]]
- [[docs/DECISAO_AGENTE_IA_BLENDER|Decisão sobre novos agentes de Blender]]

## 📋 Próximas etapas

O planejamento, o portal e o ragdoll de teste foram aceitos. **A construção da arena completa ainda não foi autorizada.** Acompanhe as tarefas no [Linear](https://linear.app/carloszucchi/project/testezinho-roblox-ai-ragdoll-playground-8cd1127081c2).

## 🔄 Como sincronizar

O **GitHub** é a referência versionada; o Obsidian apresenta os mesmos arquivos `.md` em um ambiente de notas. O plugin **Obsidian Git** está configurado para verificar atualizações remotas automaticamente, mas **não publicar alterações automaticamente** em um repositório público.

- Receber mudanças: `Ctrl+P` → comando **Git: Pull** (além da verificação automática).
- Enviar suas próprias mudanças: `Ctrl+P` → **Git: Commit-and-sync**, verificando antes quais arquivos serão publicados. Pode exigir autenticação GitHub no PC.
- Quando o Codex publicar arquivos novos, use Pull para recebê-los.
- Se aparecer conflito de merge, não force um push; salve cópias e resolva o conflito antes.

**Memória de múltiplos projetos:** crie outro vault separado e privado para projetos pessoais. Este vault é **somente** para o jogo Roblox público.
