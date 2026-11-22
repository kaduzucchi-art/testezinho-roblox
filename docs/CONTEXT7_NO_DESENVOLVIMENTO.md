# Context7 no desenvolvimento do Testezinho Roblox

**Decisão (22/11/2026):** Context7 é uma **fonte complementar de documentação atualizada**, não um substituto do Roblox Studio MCP, das skills Roblox ou do Superpowers.

## Quando utilizar

- Se for necessário confirmar uso atual de biblioteca, framework, assinatura de API, exemplo de integração ou mudança de versão e **se a documentação procurada estiver disponível no Context7**.
- Utilizar a documentação oficial do [Roblox Creator Hub](https://create.roblox.com/docs) como **referência primária** para Luau, Humanoid, física, constraints, UI, cliente/servidor e Studio.
- Usar as skills Roblox instaladas para organização e boas práticas, com validação em testes no Studio.
- **Se o Context7 não estiver conectado à sessão do Codex, ou não oferecer documentação Roblox relevante, não interromper o projeto para forçar seu uso**. Consultar a documentação oficial e indicar a limitação.

## Fluxo recomendado ao Codex

1. Ler o [prompt mestre](../prompts/primeiro-playground-ragdoll.md), o plano da [CAR-22](CAR-22_PLANO_MVP_RAGDOLL.md) e as instruções relevantes do repositório.
2. Consultar o Roblox Creator Hub quando houver dúvidas técnicas específicas.
3. Se o Context7 estiver disponível **na sessão atual do Codex**, resolver a biblioteca/documentação adequada e consultar apenas os tópicos pertinentes, sem confundir exemplos de terceiros com APIs oficiais.
4. Verificar compatibilidade de versão e validar qualquer código resultante em Roblox Studio. Citar as fontes relevantes no plano/registro técnico.
5. Não instalar ferramentas novas, alterar configurações do Codex ou usar pacotes externos só para adicionar Context7 sem autorização.

## Estado confirmado

O usuário informou ter **Context7 conectado no ChatGPT**. O Context7 também aparece entre as ferramentas disponíveis neste ambiente do ChatGPT. **Isso não comprova, por si só, que a integração esteja disponível no aplicativo Codex no PC.** Cabe ao Codex verificar sua lista atual de ferramentas antes de usá-lo.

## Aplicação prática

No teste visual da **CAR-23**, criar um pequeno modelo `MCP_Demo_Temporaria` só depois de backup verificável do `Place1`. Para esse teste, **Context7 é opcional** e a documentação oficial do Roblox é suficiente na maioria dos casos.

A demo é **reversível**, mas deve permanecer no mapa até o usuário vê-la e aprovar sua remoção. Isso evita a contradição entre “desfazer a alteração” e “quero ver o portal”.
