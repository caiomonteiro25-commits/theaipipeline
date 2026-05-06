---
name: pdf-workflow-pro
description: >
  Workflow profissional de PDF: criação em InDesign/Illustrator, edição em Acrobat, formulário,
  assinatura, compressão e entrega. PDF para gráfica vs PDF para digital vs PDF interativo.
  Integrações: PDF direto do CC para Acrobat AI Assistant, Sign integrado, compressão inteligente.
  Complementa: indesign-workflow, acrobat-ai-workflow, document-automation.
area: adobe
complementa: indesign-workflow, acrobat-ai-workflow, document-automation
---
# PDF Workflow Pro — Criação, Edição e Entrega Profissional

## Hierarquia de Qualidade de PDF
```
GRÁFICA DE IMPRESSÃO:
- PDF/X-4 (suporta transparência, melhor compatibilidade)
- CMYK / sem RGB ou espaço de cor misto
- Imagens mínimo 300ppi
- Fontes embedadas
- Sangria 3mm + marcas de corte

IMPRESSÃO DIGITAL (Xerox, HP Indigo):
- PDF/X-1a ou PDF padrão com perfil CMYK
- Imagens 150-300ppi (suficiente para impressão digital)

DISTRIBUIÇÃO DIGITAL:
- PDF standard com sRGB
- Comprimido (target < 5MB para email / < 20MB para download)
- Hyperlinks ativos
- Acessibilidade: tagged PDF com alt text em imagens

PDF INTERATIVO:
- Botões, vídeo embutido, formulário, links internos
- Não comprimir — interatividade pode quebrar
- Testar em Acrobat Reader antes de distribuir
```

## Criação no InDesign para Gráfica
```
1. Document Setup: tamanho final + sangria 3mm
2. Preflight: Window → Output → Preflight → verificar erros
3. Export PDF/X-4: File → Export → Adobe PDF → PDF/X-4
   ✓ Marks and Bleeds: crop marks + bleed 3mm
   ✓ Compression: Bicubic Downsampling para 300ppi
   ✓ Fonts: Embed All Fonts
4. Verificar no Acrobat: Output Preview → Separations (verificar pretos e cores especiais)
```

## Edição e Otimização no Acrobat
Compressão sem perda visual perceptível:
- PDF Optimizer: File → Save As Other → Optimized PDF
- Images: Downsample para 150ppi (digital) ou 300ppi (impressão)
- Fonts: subset embedded fonts acima de 35%
- Discard Objects: remover metadata, comentários, camadas ocultas

## Formulário PDF Profissional
1. InDesign: criar layout visual do formulário
2. Export como PDF (sem interatividade)
3. Acrobat: Tools → Prepare Form → detecta campos automaticamente
4. Ajustar campos: nomear cada campo (importante para export de dados)
5. Distribuir: Send & Track → Acrobat gerencia respostas
6. Coletar: Export Data → CSV/Excel com todas as respostas

## Regras
- PDF/X-4 é o padrão atual para gráfica — nunca PDF genérico para impressão offset
- Sempre fazer Preflight antes de enviar para gráfica — erros custam tempo e dinheiro
- PDF interativo: não comprimir nem converter para PDF/X — quebra a interatividade
- Assinatura: verificar com o cliente se assinatura digital tem validade jurídica no contexto
