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

1. **DNS** — ✅ já configurado no Registro.br (zona do `mtrx.com.br`):

   | Tipo | Nome | Valor |
   |---|---|---|
   | `A` | `shows.mtrx.com.br` | `187.127.42.210` (VPS Hostinger) |

2. **Setup da VPS** — do seu computador, na raiz do repositório:

   ```bash
   VPS=root@187.127.42.210 EMAIL=seu@email ./shows-mtrx/deploy/deploy.sh --setup
   ```

   Instala nginx e certbot (se faltarem), ativa o site, emite o HTTPS e publica a página.
   Se a porta 80 da VPS já estiver ocupada por outro serviço (ex.: Traefik/Docker),
   o script para sem mexer em nada — aí o site precisa entrar por esse serviço.

## Atualizar a agenda

```bash
VPS=root@187.127.42.210 ./shows-mtrx/deploy/deploy.sh
```
