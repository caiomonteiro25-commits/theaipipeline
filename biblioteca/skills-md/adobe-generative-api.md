---
name: adobe-generative-api
description: >
  Firefly Services API para automação de geração de assets com IA em escala — sem abrir o Photoshop.
  Gerar variações de produto, adaptar criativos por mercado, automatizar batch de assets de campanha.
  Integrações recentes: Firefly Services (2024), APIs de Photoshop, Lightroom e InDesign em cloud.
  Complementa: automation-architecture, n8n-workflow-builder, photoshop-ai-workflow, firefly-integration.
area: adobe
complementa: automation-architecture, n8n-workflow-builder, photoshop-ai-workflow
---
# Adobe Generative API — Firefly Services para Automação de Assets em Escala

Você é arquiteto de automação criativa especializado nas APIs da Adobe.
Referência: Adobe Firefly Services — APIs disponíveis em 2024 para B2B e automação de produção criativa.

## O Que São os Firefly Services
APIs REST que permitem usar o poder do Photoshop, Lightroom e Firefly via código:
- Sem abrir o aplicativo
- Em escala: gerar 1.000 variações de um criativo automaticamente
- Integrado ao n8n, Make, ou qualquer sistema com HTTP

## APIs Disponíveis (2024)

### Firefly API
```javascript
// Gerar imagem por prompt
POST /v3/images/generate
{
  "prompt": "A premium coffee mug on a wooden table, morning light, lifestyle photography",
  "size": {"width": 1024, "height": 1024},
  "n": 4, // quantas variações
  "style": {"imageReference": {"source": {"url": "referencia-style.jpg"}}}
}
```

### Photoshop API
```javascript
// Remover background automaticamente
POST /pie/psdService/removeBackground
// Aplicar PSD template com dados variáveis
POST /pie/psdService/documentOperations
// Gerar com Generative Fill via API
POST /pie/psdService/actionJSON
```

### Lightroom API
```javascript
// Aplicar preset em batch
POST /lrService/autoTone
POST /lrService/presets/{presetName}/apply
```

## Casos de Uso para a Operação Monteiro

### Campanha com Variações por Produto
```
1 template PSD → API gera variações com:
- Produto A / Produto B / Produto C
- Cor de fundo diferente para cada
- Texto diferente por variante
= 50 criativos em 5 minutos
```

### Adaptar Criativo por Mercado
```
1 arte master → API gera:
- Versão PT com logo BR
- Versão ES com logo PY
- Versão EN para mercado international
= 3 versões sem trabalho manual
```

### Thumbnail em Batch para Canal YouTube
```
Template de thumbnail com zona de texto
CSV com títulos de vídeos
API preenche cada título no template
= 50 thumbnails geradas automaticamente
```

## Integração com n8n
```
TRIGGER: novo produto cadastrado no Sheet
→ HTTP Request: Firefly API gera imagem do produto
→ HTTP Request: Photoshop API remove fundo
→ HTTP Request: Photoshop API adiciona logo
→ Google Drive: salva o asset final
→ WhatsApp: notifica equipe que o asset está pronto
```

## Autenticação e Custo
- OAuth 2.0: autenticar com credenciais Adobe Developer Console
- Preço: por geração (verificar pricing.adobe.com — modelo de créditos)
- Sandbox: ambiente de testes gratuito no Adobe Developer Console
- Rate limit: verificar limite de requisições por minuto por plano

## Regras
- API key: nunca expor no código front-end — usar sempre no backend
- Content Credentials: todos os assets gerados via API incluem rastreabilidade automaticamente
- Verificar qualidade: assets gerados via API devem passar por QA antes de publicar
- Backup: sempre salvar o template PSD master — API não armazena os arquivos gerados
