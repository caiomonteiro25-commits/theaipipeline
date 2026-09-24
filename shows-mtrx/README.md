# shows.mtrx

Diretório do subdomínio de shows da MTRX.

```
shows-mtrx/
├── index.html      ← página pública da agenda (lê shows.json)
├── shows.json      ← lista de shows — é o único arquivo a editar pra atualizar a agenda
├── README.md       ← este guia (não vai pro deploy)
└── materiais/      ← material interno (não vai pro deploy)
    ├── riders/     ← riders técnicos e de camarim
    ├── briefs/     ← briefs de produção por show
    └── artes/      ← artes de divulgação
```

## Como funciona

O `vercel.json` na raiz detecta o hostname `shows.mtrx.*` e reescreve a rota
internamente para `/shows-mtrx/` — mesma técnica usada na biblioteca.

| Quem acessa | O que vê |
|---|---|
| `theaipipeline.com.br` | Landing principal (intacta) |
| `shows.mtrx.<domínio>` | Agenda de shows (`shows-mtrx/index.html`) |

`materiais/` e `README.md` estão no `.vercelignore`, então **não** são
publicados — ficam só no repositório.

## Adicionar um show

Edite `shows.json`. Cada show é um objeto:

```json
[
  {
    "data": "2026-11-14",
    "cidade": "Belo Horizonte, MG",
    "local": "Nome da casa",
    "horario": "23h",
    "ingressos": "https://link-dos-ingressos",
    "esgotado": false
  }
]
```

- `data` no formato `AAAA-MM-DD` (obrigatório). Shows com data passada somem sozinhos.
- Sem `ingressos` → botão aparece como "Em breve".
- `esgotado: true` → botão aparece como "Esgotado".

## Ativar o subdomínio

1. No projeto da Vercel: **Settings → Domains → Add** `shows.mtrx.<domínio>`.
2. No DNS do domínio: registro `CNAME` `shows.mtrx` → `cname.vercel-dns.com`.
3. Fazer deploy (`vercel --prod` ou push na branch de produção).
