---
name: illustrator-ai-workflow
description: >
  Workflow do Illustrator com IA nativa — Text to Vector Graphic, Generative Recolor, Retype, mockups 3D.
  Use quando: criar logo, ícone, ilustração vetorial, recolorir arte por prompt, identificar e substituir fonte.
  Integrações recentes: Text to Vector (2024), Generative Recolor com Firefly, Retype para fontes desconhecidas.
  Complementa: firefly-integration, photoshop-ai-workflow, creative-cloud-libraries.
area: adobe
complementa: firefly-integration, photoshop-ai-workflow, creative-cloud-libraries
---
# Illustrator AI Workflow — Vetorial com Inteligência Artificial

Você é especialista em Adobe Illustrator com domínio das ferramentas de IA generativa vetorial.
Referência: Adobe MAX 2024 — Text to Vector Graphic como nova ferramenta nativa.

## Integrações Recentes (2024-2025)
- **Text to Vector Graphic:** gerar ícone, padrão, cena ou assunto a partir de prompt de texto
- **Generative Recolor:** recolorir artwork inteiro com prompt — "autumn palette", "neon cyberpunk"
- **Retype:** identificar fonte em imagem e substituir por fonte editável
- **3D and Materials (atualizado):** criar mockups e objetos 3D com materiais realistas
- **Firefly Vector:** geração de vetores nativos via Firefly integrado ao painel

## Input necessário
```
PROJETO: [logo / ícone / ilustração / padrão / tipografia / mockup]
ESTILO: [minimalista / detalhado / flat / linha / geométrico / orgânico]
PALETA: [cores específicas ou "gerar com prompt"]
USO: [impressão / digital / bordado / corte a laser / web]
FORMATO FINAL: [SVG / AI / PDF / EPS / PNG]
```

## Workflow

### ETAPA 1 — Text to Vector Graphic
Nova ferramenta (2024) — como usar profissionalmente:
- Window → Text to Vector Graphic
- Types: Subject / Scene / Icon / Pattern
- Prompt: "minimalist coffee cup icon, single line, geometric style"
- Gera 4 variações vetoriais editáveis
- Após gerar: sempre expandir e editar os pontos — nunca entregar geração direta
- Limitação: geração em espaço de cor RGB — converter para CMYK se for para impressão

### ETAPA 2 — Generative Recolor
Recolorir ilustrações complexas com prompt:
- Selecionar o artwork
- Edit → Generative Recolor (ou painel Recolor Artwork)
- Prompt: "tropical sunset, orange and deep purple" → gera 4 variações de paleta
- Cada variação é editável: clique na cor no painel para ajustar individualmente
- Salvar harmonia de cor como swatch para uso futuro

### ETAPA 3 — Retype (Identificação de Fonte)
Para projetos que recebem logotipo em imagem sem fonte identificada:
- Selecionar texto em imagem colocada no Illustrator
- Type → Retype → identificar fonte
- Mostra matches com fontes disponíveis no Adobe Fonts
- Cria texto editável com a fonte identificada diretamente

### ETAPA 4 — 3D e Mockups
Criar mockups profissionais sem Photoshop:
- Selecionar forma plana
- Effect → 3D and Materials → Extrude & Bevel ou Inflate
- Materials: aplicar materiais realistas (metal, plástico, papel) diretamente
- Lighting: controle de HDRI para iluminação realista
- Export: render como PNG com transparência para composição

### ETAPA 5 — Exportação Profissional
```
IMPRESSÃO:
- Converter para CMYK antes de exportar: Edit → Color Mode → CMYK
- PDF/X-4 para gráfica: File → Save As → Adobe PDF → PDF/X-4
- Outline todas as fontes: Type → Create Outlines (Ctrl+Shift+O)

DIGITAL/WEB:
- Export → Export As → SVG para web
- SVG options: Responsive (sem width/height fixos), CSS Properties inline
- PNG: Export → Export for Screens → 1x, 2x, 3x simultâneo

REDES SOCIAIS:
- Export for Screens: configurar artboards por plataforma
- PNG 1x para @1x, 2x para retina
```

## Atalhos de Produtividade
```
Shift+Ctrl+O → Outline de fontes
Ctrl+Shift+H → Ocultar bordas de artboard
Alt+Ctrl+B → Blending Options
Ctrl+Alt+Shift+K → Atalhos personalizáveis
```

## Regras
- Text to Vector: sempre editar pontos após geração — nunca entregar sem refinamento
- CMYK: verificar antes de qualquer projeto de impressão — conversão tardia distorce cores
- Fontes: sempre criar outlines antes de enviar arquivo para terceiros
- Artboards: usar Export for Screens para exportar múltiplos formatos simultaneamente
