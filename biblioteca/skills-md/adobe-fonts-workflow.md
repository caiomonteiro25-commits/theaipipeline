---
name: adobe-fonts-workflow
description: >
  Adobe Fonts integrado para ativação de tipografia em qualquer app Creative Cloud sem instalar arquivo.
  Workflow de tipografia consistente: ativar → usar no CC → sincronizar na Library → distribuir na equipe.
  Integrações recentes: Variable Fonts no Adobe Fonts, integração com Express Brand Kit, API de Fonts.
  Complementa: creative-cloud-libraries, indesign-workflow, illustrator-ai-workflow, express-workflow.
area: adobe
complementa: creative-cloud-libraries, indesign-workflow, illustrator-ai-workflow
---
# Adobe Fonts Workflow — Tipografia Integrada em Todo o Creative Cloud

## Acesso ao Adobe Fonts
- fonts.adobe.com: catálogo completo com filtros por classificação, peso, estilo
- Ativação: toggle no site → fonte disponível em todos os apps em segundos
- Dentro dos apps: Type → Add Fonts from Adobe Fonts (abre browser inline)

## Workflow de Seleção de Fonte
```
FILTROS ÚTEIS:
Classificação: Serif / Sans Serif / Display / Script / Monospace
Peso: Light → Regular → Bold → Black (filtrar por pesos disponíveis)
Largura: Condensed / Normal / Extended
Estilo: Geometric / Humanist / Old Style / Transitional

TESTAR ANTES DE ATIVAR:
- Sample text: digitar o texto do projeto para ver como fica com o conteúdo real
- Pangram: "The quick brown fox..." para ver todos os caracteres
- Tamanho: testar nos tamanhos reais de uso (heading, body, caption)
```

## Variable Fonts
Fonte que varia continuamente entre pesos e larguras:
- Filtrar: Variable na página de Adobe Fonts
- Usar no Illustrator/Photoshop: Properties panel → Font Weight slider
- Animar no After Effects: expressão para weight variável ao longo do tempo
- Economia: uma fonte variable substitui toda a família (light, regular, bold, etc.)

## Fonts na CC Library
- Adicionar fonte à Library: arrastar da lista de Fonts para Library panel
- Compartilhar: equipe com acesso à Library vê as fontes do projeto
- InDesign: ao abrir documento com fonte da Library → ativa automaticamente

## Workflow para Equipe sem CC
Quando colaborador não tem Adobe CC:
- Verificar: fontes Adobe Fonts não podem ser distribuídas como arquivo .ttf/.otf
- Solução A: colaborador ativa a mesma fonte no próprio CC
- Solução B: usar Google Fonts equivalente para colaboradores externos
- Solução C: InDesign → Create PDF com fontes embedadas para revisão sem edição

## Retype (Identificar Fonte em Imagem)
Descobrir nome de fonte em logotipo ou imagem:
- Illustrator → selecionar texto em imagem → Type → Retype
- Mostra matches mais próximos no Adobe Fonts
- Ativar a fonte identificada diretamente pelo Retype

## Regras
- Desativar fontes não usadas: mais de 500 fontes ativas deixa apps lentos
- Verificar suporte a caracteres PT: algumas fontes não têm ã, õ, ç completos
- Fonts em arquivo para gráfica: sempre Create Outlines — gráfica pode não ter a fonte
- Variable Fonts: verificar compatibilidade com a versão do app antes de usar
