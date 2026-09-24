# shows.mtrx.com.br

Diretório do subdomínio de shows da MTRX, hospedado na **VPS da Hostinger**
(nginx). Não passa pelo Vercel: a pasta inteira está no `.vercelignore`.

```
shows-mtrx/
├── index.html      ← página pública da agenda (lê shows.json)
├── shows.json      ← lista de shows — é o único arquivo a editar pra atualizar a agenda
├── README.md       ← este guia
├── deploy/
│   ├── nginx.conf  ← site do nginx na VPS
│   └── deploy.sh   ← publica na VPS
└── materiais/      ← material interno (nunca vai pra VPS)
    ├── riders/     ← riders técnicos e de camarim
    ├── briefs/     ← briefs de produção por show
    └── artes/      ← artes de divulgação
```

Na VPS o site fica em `/var/www/shows.mtrx.com.br/` e só recebe
`index.html` + `shows.json`.

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

Depois rode o deploy (abaixo) pra publicar.

## Colocar no ar (1ª vez)

1. **DNS** — no painel onde o `mtrx.com.br` é gerenciado, crie:

   | Tipo | Nome | Valor |
   |---|---|---|
   | `A` | `shows` | IP da VPS |

   Espere propagar (`ping shows.mtrx.com.br` deve responder com o IP da VPS).
   O certificado HTTPS do passo 2 só é emitido depois disso.

2. **Setup da VPS** — do seu computador, na raiz do repositório:

   ```bash
   VPS=root@IP-DA-VPS EMAIL=seu@email ./shows-mtrx/deploy/deploy.sh --setup
   ```

   Instala nginx e certbot (se faltarem), ativa o site, emite o HTTPS e publica a página.

## Atualizar a agenda

```bash
VPS=root@IP-DA-VPS ./shows-mtrx/deploy/deploy.sh
```
