# Deploy da biblioteca · Guia rápido

## O que foi criado

```
skills-monteiro/
├── biblioteca/
│   ├── index.html      ← portal da biblioteca (12KB)
│   └── robots.txt      ← bloqueia indexação
├── vercel.json         ← rewrite por hostname
└── index.html          ← landing principal (não foi alterado)
```

## Como funciona

| Quem acessa | O que vê |
|---|---|
| `theaipipeline.com.br` | Landing principal (intacta) |
| `www.theaipipeline.com.br` | Landing principal (intacta) |
| `bibl10t3c4secr3t4.theaipipeline.com.br` | **Portal da biblioteca** → CTA abre o Drive |

A mágica está no `vercel.json`: ele detecta o hostname e reescreve a rota internamente — sem redirect visível pro usuário.

## Como fazer deploy

### Opção 1 — Vercel CLI (mais rápido se você já usa)

```bash
cd /Users/caaiomonteiiro/Desktop/MATERIAL/skills-monteiro
vercel --prod
```

### Opção 2 — Drag & drop no painel Vercel

1. Abra https://vercel.com/descubraia01-6342s-projects/theaipipeline
2. No deploy mais recente, clique no menu `...` → "Promote to Production" não serve aqui (precisa de novo deploy com vercel.json)
3. Vá em https://vercel.com/new → arraste a pasta `skills-monteiro` inteira
4. Conecte ao projeto `theaipipeline` existente

### Opção 3 — Git (se estiver versionado)

```bash
git add biblioteca/ vercel.json
git commit -m "feat: portal biblioteca com rewrite por hostname"
git push
```

Vercel faz deploy automático.

## Como testar depois do deploy

1. Acesse `https://bibl10t3c4secr3t4.theaipipeline.com.br/` → deve abrir o portal
2. Acesse `https://theaipipeline.com.br/` → deve continuar mostrando a landing original
3. Confirme: clicar em "Abrir biblioteca no Drive" abre `https://drive.google.com/drive/folders/1XQXKiPB226pTnTUeYtpeBKEDX46WlWS7` em nova aba
4. View source no subdomínio → deve ter `<meta name="robots" content="noindex...">`

## Trocar a URL secreta no futuro

Se quiser revogar acesso (porque vazou ou quer rotacionar):

1. No Vercel → Domains → adicionar novo subdomínio (ex: `cofr3-monteiro-2026.theaipipeline.com.br`)
2. No Registro.br → adicionar CNAME apontando pra `5ccb94a926eb0f0d.vercel-dns-017.com.`
3. No `vercel.json` → trocar o valor do `host` para o novo subdomínio
4. Remover o subdomínio antigo do Vercel
5. Deploy

Quem tinha o link antigo vai cair em 404. Quem tem o novo link continua acessando.

## Trocar o link do Drive

Se você mudar de pasta no Drive, é só editar uma linha em `biblioteca/index.html`:

Procure por `drive.google.com/drive/folders/` e troque o ID após `/folders/`.
