---
name: video-export-workflow
description: >
  Workflow de exportação de vídeo do Premiere para todas as plataformas via Adobe Media Encoder.
  Configurações otimizadas por destino: YouTube, Instagram, TikTok, broadcast, arquivo master.
  Integrações recentes: Media Encoder com preset de exportação por plataforma, exportação em batch.
  Complementa: premiere-ai-workflow, after-effects-workflow, frame-io-workflow.
area: adobe
complementa: premiere-ai-workflow, after-effects-workflow, frame-io-workflow
---
# Video Export Workflow — Exportação Profissional para Todas as Plataformas

## Media Encoder como Motor de Exportação
Nunca exportar direto do Premiere — sempre via Media Encoder:
- Premiere continua aberto e editável durante o render
- Múltiplos formatos simultâneos: exportar para YouTube + Instagram + master em 1 operação
- Queue: adicionar múltiplos projetos e deixar renderizando em background

## Presets por Plataforma (2024-2025)
```
YOUTUBE 1080p:
Codec: H.264 / Profile: High / Level: 4.2
Bitrate: VBR 2-pass / Target 12Mbps / Max 20Mbps
Frame Rate: mesma da sequência (não alterar)
Audio: AAC / 320kbps / 48kHz / Stereo

YOUTUBE 4K:
Codec: H.265 (HEVC) / bitrate VBR 35-45Mbps
(H.265 = metade do tamanho de H.264 na mesma qualidade)

INSTAGRAM FEED (1:1 ou 4:5):
H.264 / 1080x1080 ou 1080x1350 / 30fps / 10Mbps / AAC 192kbps

INSTAGRAM REELS / TIKTOK (9:16):
H.264 / 1080x1920 / 30fps / 8Mbps / AAC 192kbps
Duração máxima: Reels 90s / TikTok 10min

ARQUIVO MASTER (sem compressão destrutiva):
ProRes 422 HQ (Mac) ou DNxHR HQX (Windows)
Audio: PCM não comprimido / 48kHz / 24bit

BROADCAST:
MXF / XDCAM 50Mbps ou conforme especificação da emissora
Audio: PCM estéreo ou 5.1 conforme solicitado
```

## Workflow de Exportação

### ETAPA 1 — Verificação antes de exportar
- Sequência: verificar que não há clip offline (vermelho na timeline)
- Áudio: checar níveis — pico máximo em -3dB, loudness target por destino
- Color: desativar proxies (Toggle Proxies) para exportar com qualidade original
- Marks: definir In/Out se não exportar a sequência completa

### ETAPA 2 — Export via Media Encoder
- Premiere: File → Export → Media → Send to Media Encoder
- Media Encoder: aplicar preset → Add to Queue
- Adicionar variações: clique direito no item → Duplicate → trocar preset
- Start Queue: todos os formatos renderizam em sequência

### ETAPA 3 — Batch Export de Múltiplos Projetos
- Media Encoder → File → Add Source
- Arrastar múltiplos .prproj ou sequências
- Configurar preset para cada item
- Queue roda todos em sequência (ou paralelo se hardware suportar)

### ETAPA 4 — Watch Folder (Automação)
Para entregar múltiplos projetos recorrentes:
- Media Encoder → File → Create Watch Folder
- Qualquer arquivo colocado na pasta → exportado automaticamente com preset configurado

## Verificação Pós-Export
- Assistir os primeiros e últimos 30 segundos do arquivo exportado
- Verificar: áudio sincronizado, sem artefato, cor correta
- Tamanho de arquivo: se muito diferente do esperado, verificar configurações
- Upload de teste: carregar no YouTube (não publicar) para verificar como plataforma processa

## Regras
- Nunca exportar ProRes para redes sociais — arquivo enorme que a plataforma recomprime
- VBR 2-pass: mais lento mas melhor qualidade que CBR — sempre usar para entrega final
- Frame rate: nunca alterar frame rate na exportação — sempre manter o da sequência
- Audio: -14 LUFS para YouTube/streaming, -16 LUFS para podcast, -23 LUFS para broadcast
