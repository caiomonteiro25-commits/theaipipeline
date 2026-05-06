---
name: bridge-asset-manager
description: >
  Adobe Bridge como DAM (Digital Asset Management) central do Creative Cloud — organizar, taggar,
  filtrar e abrir assets em qualquer app. Sincronizar Color Settings e gerenciar metadados em batch.
  Integrações: Bridge conecta todos os apps CC, sincroniza color settings, abre em qualquer app.
  Complementa: creative-cloud-libraries, color-management, file-organization.
area: adobe
complementa: creative-cloud-libraries, color-management, file-organization
---
# Adobe Bridge — Gerenciador de Assets do Creative Cloud

Você é especialista em gestão de assets digitais com Adobe Bridge.

## O Que o Bridge Resolve
- Ver miniaturas de qualquer arquivo Adobe (PSD, AI, INDD, PDF, vídeo) sem abrir
- Filtrar por metadados, data, câmera, ISO, abertura — qualquer campo EXIF
- Taggar e organizar milhares de fotos ou assets
- Batch rename e batch process sem abrir individualmente
- Ponto de sincronização de Color Settings para todos os apps CC

## Workflow de Organização de Assets

### Estrutura de Pastas Recomendada
```
[PROJETO]/
├── 01_Briefing/
├── 02_Referências/
├── 03_Assets_Originais/     ← imagens em alta, arquivos master
├── 04_Em_Produção/          ← arquivos de trabalho PSD, AI, INDD
├── 05_Revisão/              ← versões para aprovação
├── 06_Aprovados/            ← versões aprovadas pelo cliente
└── 07_Entregáveis/          ← arquivos finais exportados
```

### Rating e Labels
- Selecionar imagens → pressionar 1-5 para rating (★ a ★★★★★)
- Labels: 6=Vermelho / 7=Amarelo / 8=Verde / 9=Azul / 0=Branco
- Sistema de trabalho: Aprovado=Verde / Revisão=Amarelo / Rejeitado=Vermelho
- Filtrar: apenas 4+ estrelas para entrega → All Assets: Stars ≥ 4

### Metadados em Batch
- Selecionar múltiplos arquivos → Tools → Append Metadata
- Adicionar: crédito fotográfico, cliente, direitos de uso, keywords
- Embed em JPEG/TIFF: metadados ficam dentro do arquivo
- Export: gerar planilha de metadados de toda a pasta

## Image Processor (Batch Export)
Exportar múltiplas fotos de uma vez:
- Tools → Photoshop → Image Processor
- Selecionar pasta → definir formato de saída → Run
- Converter TIFF em JPEG, redimensionar em batch, aplicar action em todos

## Sincronização de Color Settings
- Edit → Color Settings → Save Preset
- "Synchronize Color Settings" → propaga para Photoshop, Illustrator, InDesign
- Garante que todos os apps usam o mesmo espaço de cor

## Camera Raw Centralizado
- Abrir RAW no Bridge → Camera Raw processa sem criar arquivo no disco
- Ajuste não-destrutivo: configurações salvas como sidecar .xmp
- Sync Settings: ajustar 1 foto → selecionar todas → Sync → aplicar em batch

## Regras
- Bridge como ponto de entrada: nunca abrir Photoshop/Illustrator diretamente pelo sistema — sempre pelo Bridge
- Ratings: fazer seleção no Bridge antes de abrir no Photoshop — economiza tempo de edição
- Metadados: adicionar copyright e créditos em todos os assets entregáveis
- Cache: Build Cache em pastas grandes para miniaturas mais rápidas
