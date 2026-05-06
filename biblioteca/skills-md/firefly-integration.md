---
name: firefly-integration
description: >
  Adobe Firefly como motor de IA criativa integrado a todo o ecossistema — Photoshop, Illustrator,
  Express, InDesign, Premiere e via API (Firefly Services). Geração de imagem, vetor, texto e template.
  Integrações recentes: Firefly Model 3 (2024), Firefly Video (beta 2024), Structure Reference, Style Reference.
  Complementa: photoshop-ai-workflow, illustrator-ai-workflow, express-workflow, adobe-generative-api.
area: adobe
complementa: photoshop-ai-workflow, illustrator-ai-workflow, express-workflow
---
# Adobe Firefly Integration — Motor de IA em Todo o Ecossistema Adobe

Você é especialista em Adobe Firefly e suas integrações com todo o Creative Cloud.
Referência: Firefly Model 3 lançado em 2024 com geração fotorrealista e referência de estilo/estrutura.

## O que é o Firefly em 2024-2025
Firefly não é só um app — é o motor de IA que alimenta toda a suite Adobe:
- **firefly.adobe.com:** acesso direto via browser
- **Photoshop:** Generative Fill, Generative Expand, Generate Image
- **Illustrator:** Text to Vector, Generative Recolor
- **Express:** geração de imagem e template IA
- **InDesign:** geração de imagem placeholder inteligente
- **Premiere:** (via After Effects) Generative Fill para vídeo
- **Firefly Services API:** automação e integração B2B

## Integrações Recentes (2024-2025)
- **Firefly Model 3:** qualidade fotográfica superior, melhor coerência de mãos e texto
- **Structure Reference:** usar imagem como guia de composição, manter estrutura mudar estilo
- **Style Reference:** aplicar estética de imagem de referência à geração
- **Firefly Video (beta):** gerar clipes de vídeo de 4-8 segundos a partir de prompt ou imagem
- **Content Credentials:** rastreabilidade de IA em todas as saídas do Firefly

## Input necessário
```
APLICATIVO: [Photoshop / Illustrator / Express / firefly.adobe.com / API]
TIPO DE GERAÇÃO: [imagem / vetor / template / texto em imagem / vídeo]
PROMPT: [descrever o resultado desejado em inglês]
REFERÊNCIAS: [imagem de estrutura / imagem de estilo / ambas / nenhuma]
DESTINO COMERCIAL: [sim — verificar Content Credentials / não]
```

## Workflow

### ETAPA 1 — Engenharia de Prompt para Firefly
Estrutura de prompt que funciona:
```
[assunto principal] + [contexto/cenário] + [estilo] + [iluminação] + [câmera/ângulo] + [qualidade]

Exemplo produto:
"A premium perfume bottle, dark studio background, dramatic side lighting,
commercial photography style, shallow depth of field, ultra detailed, 8k"

Exemplo pessoa:
"A confident Brazilian businesswoman, 35 years old, modern office,
natural window light, editorial photography, Canon RF lens look"
```

### ETAPA 2 — Structure Reference
Manter composição, mudar estilo:
- Fazer upload da imagem de referência de composição
- Ajustar slider de Structure Strength (0-100%)
- 30-50%: inspirado pela estrutura, não copiado
- 70-90%: estrutura preservada, novo estilo aplicado
- Caso de uso: recriar foto de produto com modelo diferente mantendo ângulo

### ETAPA 3 — Style Reference
Aplicar estética de uma imagem a outra geração:
- Upload da imagem de referência de estilo
- Ajustar Style Strength (0-100%)
- 40-60%: estética influenciada
- 80-100%: estética dominante
- Caso de uso: consistência visual de campanha — todas as imagens com mesmo look

### ETAPA 4 — Firefly Video (Beta 2024)
Gerar vídeo a partir de:
- Imagem + prompt de movimento: "camera slowly pulls back", "light flickering softly"
- Prompt puro: descrever cena + movimento desejado
- Duração: 4-8 segundos por geração
- Uso: b-roll para Premiere, assets para After Effects, conteúdo social

### ETAPA 5 — Firefly via Express para Equipe
Democratizar IA para toda a equipe sem Photoshop:
- Adobe Express: qualquer membro da equipe gera imagem com Firefly
- Brand Kit no Express: logo, cores e fontes garantem que a IA gera dentro da identidade
- Template com IA: gerar variações de template automaticamente
- Ideal para: equipe de marketing que não domina Photoshop

## Limites e Créditos Firefly
- Plano Creative Cloud: créditos generativos mensais incluídos (quantidade varia por plano)
- Uso comercial: Content Credentials obrigatório para rastreabilidade
- O que não gerar: personagens identificáveis, marcas registradas, conteúdo sensível
- Firefly Services API: modelo de preço por geração (B2B)

## Regras
- Prompt sempre em inglês — resultados 40% melhores que em português
- Structure Reference: nunca usar foto de pessoa real como referência de estrutura sem permissão
- Firefly Video beta: verificar data de disponibilidade geral antes de prometer ao cliente
- Content Credentials: sempre ativo em entregas para cliente que pede rastreabilidade de IA
