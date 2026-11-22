# Arquivos Roblox Studio (.rbxl)

O repositório agora inclui os arquivos binários do Roblox Studio coletados no Windows em **22/11/2026**. Os scripts Luau que acompanham o protótipo também estão versionados separadamente em [`src/`](../src/).

| Arquivo | Tamanho | SHA-256 do arquivo local |
| --- | ---: | --- |
| [`Place1.rbxl`](Place1.rbxl) — versão atual com **portal + teste isolado de ragdoll R15** | 98.272 bytes | `00E65EDCEBD7DFA1C10E707C3AB07979DED36894E4D0887946C010E0D8F65433` |
| [`backups/Place1-backup-com-portal-pre-CAR-25.rbxl`](backups/Place1-backup-com-portal-pre-CAR-25.rbxl) — backup anterior à implementação do ragdoll | 93.377 bytes | `6D041701B0F610A5413A04B749D7346DB568782D9B66017F2CAB805A63092501` |
| [`backups/Place1-backup-pre-CAR-23.rbxl`](backups/Place1-backup-pre-CAR-23.rbxl) — backup anterior à criação do portal | 89.031 bytes | `68FCB6284FB2F126929EEDEE9E7949D826D629F230E64F78BFE6EA65F168BF1A` |

Esses hashes foram calculados no PC de origem. Os blobs e os tamanhos foram conferidos após a gravação no GitHub. **A abertura dos backups em outra sessão ainda não foi testada.** Não confundir integridade de transferência com teste de restauração.

## Para utilizar

1. Baixe `Place1.rbxl` do GitHub e abra-o no Roblox Studio como arquivo local, sem sobrescrever automaticamente outro projeto.
2. Faça uma cópia antes de novas edições.
3. O portal está em `Workspace.MCP_Demo_Temporaria`. O usuário aprovou seu visual e **não autorizou a remoção**.
4. No Play solo, o teste de ragdoll utiliza a tecla **R** ou o botão **Ragdoll / Levantar**; a implementação é intencionalmente isolada e não é o jogo completo.
5. Para mais detalhes e limitações, consultar o [relatório CAR-25](../docs/CAR-25_TESTE_RAGDOLL_R15.md), o [registro de aprovação](../docs/APROVACAO_TESTES_INICIAIS_2026-11-22.md) e o [contexto geral](../CONTEXTO_GERAL.md).

**Aviso:** `.rbxl` é um binário. Para alterações de scripts, prefira preservar também os `.luau` em `src/`. Não executar sincronização Rojo sem revisão de impacto e backup. Os arquivos aqui versionados estão em um **repositório público**.
