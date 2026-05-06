---
name: color-management
description: >
  Gestão de cor profissional entre apps Adobe — perfis ICC, espaços de cor, calibração de monitor
  e consistência de cor do Photoshop ao Premiere, do InDesign à gráfica.
  Integrações: Color Settings sincronizadas via CC Bridge, perfis de cor no Substance 3D, HDR em Premiere.
  Complementa: photoshop-ai-workflow, premiere-ai-workflow, indesign-workflow, pdf-workflow-pro.
area: adobe
complementa: photoshop-ai-workflow, premiere-ai-workflow, indesign-workflow
---
# Color Management — Gestão de Cor Profissional no Ecossistema Adobe

## Por Que Gestão de Cor Importa
Vermelho no Photoshop ≠ vermelho na impressão ≠ vermelho no Instagram sem gestão de cor.
Com gestão de cor correta: o que você vê no monitor é o que sai na gráfica e na tela do cliente.

## Espaços de Cor por Destino
```
sRGB: web, redes sociais, apresentações, telas em geral
Adobe RGB (1998): fotografia para impressão, maior gamut
Display P3: telas Apple (iPhone, MacBook Pro HDR), streaming HDR
CMYK (Coated FOGRA39): impressão offset na Europa/Brasil
CMYK (US Web Coated SWOP): impressão nos EUA
ProPhoto RGB: arquivo master de câmera — nunca para entrega
```

## Color Settings Sincronizadas (Bridge)
1. Adobe Bridge → Edit → Color Settings
2. Escolher preset por fluxo:
   - Photography: Adobe RGB, conversão relativa colorimétrica
   - Web/Internet: sRGB, perceptual
   - Prepress: CMYK + rendering intent relativo
3. Salvar preset → Bridge propaga para Photoshop, Illustrator, InDesign automaticamente

## Photoshop — Color Management
- Soft Proof: View → Proof Setup → Working CMYK (simular como vai ficar na impressão)
- Convert to Profile: Edit → Convert to Profile (antes de exportar para destino específico)
- Assign Profile: Edit → Assign Profile (se arquivo foi criado sem perfil)
- Profile Warning: se aparecer ao abrir → sempre escolher "Use Embedded Profile"

## Premiere — Color Science
- Sequence: trabalhar em Rec.709 para entrega broadcast / Rec.2020 para HDR
- Lumetri: Work in HDR: ativar se material de câmera é Log (S-Log, C-Log, V-Log)
- LUT (Look Up Table): aplicar LUT de input para converter Log para Rec.709
- Export: verificar que o Color Range na exportação corresponde ao da sequência

## Calibração de Monitor
Sem monitor calibrado, toda gestão de cor é inútil:
- Software: Display CAL (gratuito) ou i1Display (profissional)
- Alvo: D65 (6500K), gama 2.2 para Windows / 1.8 para produção fotográfica
- Frequência: calibrar a cada 30 dias ou quando o monitor está quente (30min de uso)
- Iluminação: ambiente de trabalho com luz neutra (não fluorescente amarelada)

## Regras
- Nunca converter para CMYK antes da hora — trabalhar em RGB até o momento de exportar para gráfica
- Soft Proof obrigatório antes de enviar para impressão — monitor e papel são diferentes
- sRGB para web: sempre converter para sRGB antes de exportar para redes sociais
- HDR: não misturar HDR e SDR na mesma sequência do Premiere
