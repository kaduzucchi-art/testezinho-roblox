# Prompt mestre v1.0 — Roblox AI Ragdoll Playground

**Projeto:** [testezinho-roblox](https://github.com/kaduzucchi-art/testezinho-roblox)  
**Data de referência:** 22/11/2026  
**Estado:** pronto para enviar ao Codex, **não implementado ainda**.

> **Missão para o Codex:** atuar como desenvolvedor Roblox (Luau), designer técnico e testador, usando a integração MCP oficial do Roblox Studio e as skills do Superpowers para criar um protótipo **original, pequeno, jogável, responsivo e testado**. Primeiro planejar e pedir aprovação; só então construir.

## 1. Contexto confirmado: NÃO recomeçar as verificações iniciais

- Windows, Roblox Studio aberto com o projeto **Place1** (template Baseplate) em modo de edição.
- O MCP `Roblox_Studio` **já foi testado de ponta a ponta em modo de leitura**: o Codex identificou `Camera`, `Baseplate`, `Baseplate.Texture`, `Terrain`, `SpawnLocation` e `SpawnLocation.Decal`.
- O indicador do Studio mostrou **MCP Ready**. Não foi feita edição pelo MCP ainda; testar a capacidade de escrita com uma pequena operação controlada depois da aprovação.
- O Codex tem Roblox Studio Agent Plugin **v0.2.3**, **Superpowers v7.0.1**, **Roblox Dev Skill**, **23 Roblox Skills**, **Rokit 1.2.0**, **Rojo 7.7.1** (CLI e plugin no Studio), **Selene 0.32.0**, **StyLua 2.6.0** e Git. REA está configurado, mas **não é necessário** para este projeto.
- Este repositório é **público** e deve guardar **código, planos, decisões e histórico**, mas **nunca segredos** ou dados privados.

Não suponha que todas as skills funcionam em qualquer sessão: descubra as disponíveis no ambiente e leia as instruções pertinentes. Use Superpowers (`brainstorming` → design → `writing-plans` → implementação testada → verificação) sem transformar um MVP em arquitetura excessiva. Dê prioridade, quando fizer sentido, às skills `roblox-dev-skill`, `roblox-studio-mcp`, `roblox-luau`, `roblox-physics`, `roblox-ui`, `roblox-security`, `roblox-testing` e `roblox-performance`.

## 2. Objetivo criativo do MVP

Criar um **playground de ragdoll cartunesco, original, simples e divertido**, inspirado no apelo de jogos de física do Roblox, **sem copiar nomes, assets, mapas, interfaces ou scripts de jogos de terceiros**.

**Loop principal:** nascer em uma arena → se movimentar → alternar ragdoll → ser impulsionado por uma plataforma de lançamento → aterrissar e recuperar o controle → repetir.

### Escopo obrigatório

1. **Arena 3D:** pequena, legível, colorida, com área de spawn, plataforma de lançamento claramente identificada, região ampla de aterrissagem e proteção para evitar cair infinitamente fora do mapa. Usar somente peças e materiais confiáveis/criados para o jogo.
2. **Ragdoll funcional:** alternar ragdoll/normal com um botão visível; preservar comportamento razoável do personagem (preferir R15, verificar o rig real), evitar travamentos de câmera, mortes acidentais, perda permanente de controle e duplicação de constraints. Dar um meio de recuperação.
3. **Plataforma de lançamento:** impulso previsível e divertido, com indicação visual; não lançar repetidamente em loop por colisões; cooldown curto; tratar respawn e uso por mais de um jogador.
4. **Interface simples e agradável:** botão `Ragdoll / Levantar`, botão `Reiniciar` e pequeno texto de instruções. Compatível com mouse/teclado e toque, sem cobrir controles básicos no celular. Feedback claro do estado ativado.
5. **Reset/respawn confiável:** restaurar jogador e limpar estados temporários sem deixar conexões, efeitos ou constraints acumulando.
6. **Multiplayer básico:** outros jogadores podem usar arena e plataforma independentemente, sem que um jogador controle o estado físico de outro.

### Fora do escopo desta primeira versão

Não adicionar pets, lojas, moedas, rebirth, inventário persistente, DataStores, compras em Robux, rankings, NPCs complexos, grandes mapas, modelos gerados por terceiros, músicas comerciais, anúncios ou publicação pública. Nada de engenharia reversa com REA.

## 3. Restrições técnicas

- **Inspecione primeiro** hierarquia, rig/configurações e scripts existentes; documente suas descobertas. Preserve `Baseplate`, `SpawnLocation` e recursos existentes até que uma alteração seja necessária e aprovada.
- **Salve/peça backup antes de escrever** no lugar, especialmente antes de mudanças amplas. Informe se o backup depende de uma ação manual.
- Arquitetura mínima e clara, com funções reutilizáveis e nomes descritivos. Separar lógica do servidor e apresentação/controles do cliente. O servidor valida qualquer pedido de ragdoll/impulso/reset que afete estados compartilhados; não confiar em RemoteEvents enviados pelo cliente.
- Evitar `while true` desnecessário, polling frequente, vazamentos de conexões, spam de RemoteEvents, uso incorreto de `Anchored`, físicas instáveis e partículas excessivas.
- Criar scripts próprios em Luau. Não executar modelos/scripts desconhecidos da Toolbox. Preferir APIs suportadas pela documentação atual da Roblox.
- **Não habilitar Rojo Sync automaticamente** em um place existente. Antes de sincronizar, explicar quais instâncias serão criadas, substituídas ou removidas e pedir aprovação. O MVP pode começar pelo MCP, mas o código-fonte final precisa ficar versionado no repositório.
- Não instalar dependências adicionais sem justificativa. Usar StyLua e Selene nas fontes quando aplicável, e testes em Studio/MCP.
- Não alterar configurações globais do computador, credenciais, permissões ou outros projetos.

## 4. Processo de execução obrigatório

### Fase A — Primeiro retorno (SEM alterar o Roblox Studio)

1. Leia o `README.md`, o status em `docs/` e este prompt completo no GitHub.
2. Confirme qual place do Roblox Studio está ativo pelo MCP; leitura apenas.
3. Faça um **brainstorm objetivo** de duas abordagens técnicas para ragdoll e indique a mais estável para o MVP.
4. Entregue uma **especificação curta**: loop do jogo, hierarquia prevista, scripts e responsabilidades, controles, limites de física, estilo visual e critérios de aceite.
5. Apresente o **plano em etapas pequenas e verificáveis** (arena → ragdoll → impulso → interface → testes), com riscos e arquivos/instâncias previstos.
6. **PARE e peça aprovação antes de editar o place ou iniciar a implementação.** Não publique nada.

### Fase B — Somente depois da minha aprovação

1. Salve ou confirme backup do Place1.
2. Faça primeiro uma **mudança mínima, reversível e validada** via MCP para provar escrita segura.
3. Implemente por incrementos, um sistema de cada vez. Use Superpowers para testes e depuração; mostre progresso verificável entre as fases.
4. Após cada incremento, execute testes no Roblox Studio e leia erros/avisos do Output. Corrija erros antes de avançar.
5. Documente o código criado/alterado, instâncias no Explorer e caminhos do projeto.
6. Mantenha os arquivos Luau relevantes e a documentação sincronizados com o GitHub `kaduzucchi-art/testezinho-roblox` por commits claros. Nunca fazer push de segredos ou sobrescrever mudanças remotas de outra pessoa; conferir branch/diff primeiro. Se arquivos de instâncias do Studio não forem automaticamente exportáveis, explique a estratégia para preservar o código no Git.
7. **Não publicar a experiência nem ativar monetização.**

## 5. Checklist de aceitação (com evidências)

- [ ] O jogador aparece corretamente e consegue se mover na arena.
- [ ] Ragdoll ativa e desativa repetidamente sem perder permanentemente controle/câmera.
- [ ] A plataforma lança o personagem, com cooldown, sem teleporte indevido nem loops.
- [ ] Botões funcionam no PC e têm layout adequado para celular.
- [ ] Reset e respawn limpam o estado; sem acúmulo de instâncias/constraints.
- [ ] Teste básico em multiplayer/servidor-cliente quando o ambiente permitir.
- [ ] Nenhum erro significativo no Output durante os fluxos testados; avisos remanescentes documentados.
- [ ] Os scripts escritos foram revisados/formatados e estão versionados no GitHub.
- [ ] Registro final do que funcionou, do que NÃO foi testado e de como executar/reproduzir os testes.

## 6. Formato do retorno

Responda em **português brasileiro**, com linguagem acessível para quem está começando no Roblox Studio. Diferencie sempre **planejado, implementado, testado e não testado**. Diga os nomes exatos dos objetos e scripts criados. Evite promessas como "100% pronto" sem provas.

**Primeira resposta esperada:** diagnóstico de leitura do Place1 + escolha técnica de ragdoll + especificação e plano por etapas. **Sem executar mudanças ainda.**
