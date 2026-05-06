---
name: audition-workflow
description: >
  Adobe Audition para edição de áudio profissional — limpeza de voz, restauração, mix de podcast,
  trilha para vídeo, integração com Premiere via Dynamic Link e IA de aprimoramento de fala.
  Integrações recentes: Speech Enhancement com IA, Remix com IA para trilha adaptativa, Denoise melhorado.
  Complementa: premiere-ai-workflow, after-effects-workflow.
area: adobe
complementa: premiere-ai-workflow, after-effects-workflow
---
# Adobe Audition Workflow — Áudio Profissional com IA

Você é engenheiro de áudio especialista em Audition com foco em voz e trilha para vídeo.

## Integrações Recentes (2024-2025)
- **Speech Enhancement com IA:** melhora automática de voz gravada em ambiente não ideal
- **AI Remix:** adaptar trilha musical à duração exata do vídeo sem corte abrupto
- **Sound Remover:** remover som específico (vento, trânsito, ar-condicionado) de gravação
- **Integração Premiere Dynamic Link:** editar áudio no Audition sem exportar do Premiere

## Workflow

### ETAPA 1 — Limpar Áudio de Voz (Podcast/Vlog)
Sequência para voz gravada em ambiente ruim:
1. **Noise Print:** selecionar 1-2 segundos de silêncio → Capture Noise Print
2. **Noise Reduction:** Effects → Noise Reduction → aplicar com 70-80%
3. **Speech Enhancement (IA):** Effects → Speech Volume Leveler → IA equaliza
4. **DeEsser:** remover sibilância excessiva (som de "S" e "T")
5. **Multiband Compressor:** presença e clareza de voz
6. **Loudness:** Target Loudness -16 LUFS para YouTube, -14 LUFS para Spotify

### ETAPA 2 — Remix com IA
Adaptar música à duração do vídeo:
- Abrir arquivo de música no Audition
- Window → Remix
- Inserir duração alvo do vídeo (ex: 1:47)
- IA analisa a estrutura da música e reorganiza para caber na duração
- Ajustar: deslizar pontos de corte se transição ficou estranha
- Exportar: WAV 48kHz 24bit para usar no Premiere

### ETAPA 3 — Integração com Premiere
Editar áudio do Premiere no Audition:
- Premiere: clique direito no clipe de áudio → Edit in Adobe Audition
- Audition abre o clip para edição
- Salvar → atualiza automaticamente no Premiere (Dynamic Link)
- Multitrack Session: mixar múltiplas faixas e exportar para Premiere

### ETAPA 4 — Sound Remover
Remover som específico sem afetar a voz:
- Selecionar trecho onde o som indesejado é mais puro (sem voz)
- Effects → Sound Remover → Capture Sound Print
- Aplicar no clipe completo: 50-70% de redução
- Verificar: som removido não deve afetar timbre da voz

### ETAPA 5 — Exportação de Áudio
```
PODCAST: MP3 / 128kbps mono ou 192kbps estéreo / -16 LUFS
YOUTUBE: AAC / 256kbps estéreo / -14 LUFS
BROADCAST: WAV / 48kHz 24bit / -23 LUFS (EBU R128)
MÚSICA: WAV / 44.1kHz 24bit / sem limitação de loudness
```

## Regras
- Nunca aumentar ganho de gravação ruim — limpeza de ruído primeiro, ganho depois
- Loudness: verificar LUFS antes de exportar — volume incorreto é devolvido pelo cliente
- Dynamic Link: salvar projeto Audition antes de fechar — alterações não salvas se perdem
