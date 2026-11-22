# Decisão — Agentes de IA para Blender

**Registro:** 22/11/2026  
**Projeto:** Testezinho Roblox — AI Ragdoll Playground  
**Status:** decisão atual; reavaliar quando surgir uma necessidade concreta de modelagem 3D.

## Instrução obrigatória para o Codex

**Antes de planejar, modelar, programar ou alterar qualquer coisa, leia integralmente o prompt mestre atualizado do projeto:**

- **Arquivo:** [`prompts/primeiro-playground-ragdoll.md`](../prompts/primeiro-playground-ragdoll.md)
- **URL:** https://github.com/kaduzucchi-art/testezinho-roblox/blob/main/prompts/primeiro-playground-ragdoll.md
- **Repositório:** `kaduzucchi-art/testezinho-roblox`, branch `main`.

**Ordem de leitura:** (1) prompt mestre completo, (2) `README.md` e documentação relevante em `docs/`, (3) este registro de decisão. Não se limite a ler o nome do arquivo ou um resumo anterior: use o conteúdo atual do GitHub como referência.

Esta decisão sobre o Blender **complementa, mas não substitui** o prompt mestre. Se houver divergências, siga o escopo, os limites de segurança e a exigência de aprovação definidos no prompt mestre e apresente o conflito antes de agir.

**Próxima tarefa:** preparar a especificação e o plano da `CAR-22` no Linear, utilizando Superpowers. **Não modifique o Roblox Studio, a cena do Blender ou o código do jogo nesta etapa; aguarde aprovação explícita.**

## Vale a pena instalar outro agente de IA para o Blender?

**Por enquanto, não.** O próprio Codex já pode atuar como agente de modelagem 3D por meio do Blender MCP.

### Organização das ferramentas

- **Codex + Blender MCP:** criar modelos originais, ajustar geometria, materiais e exportar arquivos.
- **Geração 3D por IA (fal, Meshy, Tripo etc.):** alternativa futura para objetos mais complexos, considerando custos, licenças e qualidade.
- **Roblox Studio MCP:** construir o jogo e testar os modelos importados.

## Prioridade do primeiro protótipo

Para o **playground ragdoll inicial**, priorizar **peças nativas do Roblox**.

O **Blender fica preparado** para o momento em que realmente precisarmos de objetos personalizados.

## Consequências práticas

- Não instalar outro agente ou serviço de modelagem 3D neste momento.
- Não adicionar complexidade ao protótipo antes de validar a física ragdoll, a arena e os controles.
- Usar o Codex como agente central; aproveitar o MCP do Blender apenas quando houver um asset específico a produzir.
- Se surgirem necessidades de geração por provedores externos, avaliar custo, licenciamento, qualidade e disponibilidade antes de usar.

**Contexto técnico:** [Blender MCP](BLENDER_MCP_2026-11-22.md) · [Prompt mestre do MVP](../prompts/primeiro-playground-ragdoll.md) · [Linear CAR-32](https://linear.app/carloszucchi/issue/CAR-32/preparar-pipeline-de-assets-blender-roblox-studio-futuro).
