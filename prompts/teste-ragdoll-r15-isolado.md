# Teste isolado de ragdoll R15 — autorização restrita

**Data:** 22/11/2026  
**Objetivo:** começar a testar a física ragdoll no Roblox Studio **agora**, sem construir a arena nem ativar fases futuras.  
**Origem:** feedback do usuário de que o portal futurista da CAR-23 ficou visualmente bom e vontade de experimentar ragdoll.

## Antes de agir

1. Leia integralmente o [CONTEXTO_GERAL.md](../CONTEXTO_GERAL.md), o [prompt mestre](primeiro-playground-ragdoll.md), o [plano CAR-22](../docs/CAR-22_PLANO_MVP_RAGDOLL.md) e o [registro CAR-23](../docs/CAR-23_TESTE_VISUAL_PORTAL.md) na branch `main`.
2. Consulte o Linear: [CAR-23](https://linear.app/carloszucchi/issue/CAR-23/salvar-backup-do-place1-e-validar-escrita-mcp-reversivel) e [CAR-25](https://linear.app/carloszucchi/issue/CAR-25/implementar-ragdoll-r15-reversivel-e-recuperacao-de-controle). O pedido atual autoriza **somente o protótipo técnico de ragdoll da CAR-25**, não a construção da CAR-24 nem o MVP completo.
3. Inspecione o estado real do `Place1` pelo MCP antes de modificar. Preserve `Workspace.MCP_Demo_Temporaria` (portal elogiado e aprovado visualmente), `Baseplate`, `SpawnLocation` e todos os elementos existentes.
4. **Crie e verifique um novo backup do estado atual com o portal**; o backup anterior da CAR-23 não contém necessariamente a versão mais recente. Não prossiga com a escrita se não for possível realizar backup seguro.
5. Siga Superpowers e as skills Roblox relevantes; use o Creator Hub como fonte principal de API e Context7 como complemento somente quando realmente disponível e útil.

## O que está autorizado

Criar um **teste mínimo, reversível e jogável do ragdoll usando o personagem do jogador (preferir R15)**, mantendo o mapa atual. Nenhum ragdoll de NPC é necessário.

- Antes de escolher a técnica, execute uma inspeção técnica do avatar em modo Play, confirmando rig e tipos reais de juntas. Escolha a abordagem mais segura entre `Motor6D` com `BallSocketConstraint` e mecanismos nativos disponíveis; não presuma um tipo de junta sem observar.
- Implementar código Luau separado para servidor e cliente, com validação no servidor dos pedidos remotos. Evitar múltiplas constraints, vazamentos, spam, estados presos e perda permanente de câmera/controle.
- Criar um controle de teste simples (**R** no teclado e botão **Ragdoll/Levantar** visível para mouse/toque), com recuperação confiável e reset/respawn restaurando o controle. UI mínima, sem design definitivo.
- Se precisar de peças de teste, criar apenas uma superfície de segurança ou plataforma pequena e removível, preservando o spawn e o portal.
- Dar nomes claros às instâncias/scripts criados e registrar como remover com segurança apenas o sistema de teste.

## Evidências exigidas

1. Confirmar escrita no Studio pelo MCP e listar instâncias/scripts criados.
2. Rodar playtests reais no Studio, incluindo ragdoll → levantar repetidas vezes (alvo: **20 ciclos**), reset enquanto ragdoll e respawn; verificar movimento e câmera.
3. Inspecionar Output por erros/avisos e se constraints/conexões se acumulam ao repetir.
4. Se testes automáticos via MCP forem limitados, explicar exatamente o que foi testado e o que preciso testar manualmente, sem afirmar sucesso não verificado.
5. Salvar fontes Luau, documentação e evidências relevantes no repositório com commits claros; atualizar a CAR-25 no Linear **conforme progresso efetivo**. Registre também o feedback visual positivo da CAR-23; ela pode continuar em andamento enquanto o playtest/backup ainda não foi validado.
6. Atualizar `CONTEXTO_GERAL.md` com estado real e próximo passo.

## Limites

- **Não remover, mover ou editar `MCP_Demo_Temporaria`.**
- Não construir arena definitiva, plataforma de lançamento, economia, lojas ou outras mecânicas. **Não avançar para CAR-24, CAR-26 ou CAR-27 completas.**
- Não usar Blender, gerar assets externos, habilitar Rojo Sync ou instalar dependências.
- Não publicar ou monetizar a experiência.
- Caso descubra algo que impeça o teste seguro, informe e proponha a menor correção, sem improvisar alterações destrutivas.
- **Pare ao terminar o teste de ragdoll, apresente evidências e aguarde avaliação antes de implementar mais funcionalidades.**

## Resultado esperado

Ao apertar **Play**, o jogador R15 consegue mover-se, apertar **R** ou o botão para ativar o ragdoll, usar **Levantar** para recuperar o controle, repetir sem travar a câmera e dar reset/respawn sem deixar estados quebrados. O portal existente deve continuar visível e intacto.

Este documento é uma **autorização limitada de teste**, fornecida a pedido do usuário. Se a sessão do Codex exigir confirmação adicional para alguma ação, apresente o efeito esperado e solicite-a.
