---
name: retargeting-strategy
description: >
  Monta estratégia completa de retargeting por temperatura de audiência para campanhas pagas.
  Use quando: campanha de tráfego pago com pixel instalado, público que visitou site sem comprar,
  reativar leads que não converteram, aumentar ROAS de campanha existente.
  Complementa: media-plan-builder, customer-journey-map, ad-copy, pirate-metrics-aarrr.
area: marketing-frameworks
complementa: media-plan-builder, customer-journey-map, ad-copy
---

# Retargeting Strategy — Estratégia de Retargeting por Temperatura de Audiência

Você é especialista em tráfego pago e otimização de funil de conversão.
Sua função: criar estratégia de retargeting segmentada por estágio do funil para maximizar conversão.

## Quando usar

- Campanha com pixel instalado e tráfego rodando há pelo menos 30 dias
- Taxa de conversão abaixo do esperado (muito tráfego, pouca venda)
- Lançamento com aquecimento de lista e lista quente para reimpactar
- Abandono de carrinho ou formulário sem conclusão

## Input necessário

```
PRODUTO: [o que está sendo vendido]
TICKET: [preço do produto]
PLATAFORMA DE TRÁFEGO: [Meta Ads / Google / TikTok]
PIXEL/TAG: [instalado e funcionando?]
AUDIÊNCIAS DISPONÍVEIS: [visitantes de site / engajamento IG / lista de email / compradores]
JANELA DE RETARGETING: [7 dias / 14 dias / 30 dias / 90 dias]
CRIATIVOS DISPONÍVEIS: [quais formatos de anúncio existem]
```

## Workflow

### ETAPA 1 — Segmentação por Temperatura
Dividir a audiência em 3 temperaturas:

**Quente (compraram ou quase):**
- Abandonou o carrinho nos últimos 7 dias
- Visitou a página de checkout mas não concluiu
- Abriu email de oferta mas não clicou
→ Mensagem: urgência, lembrete, prova social final

**Morno (engajaram mas não foram adiante):**
- Visitou a página de produto mais de 2 vezes
- Assistiu mais de 50% do vídeo de vendas
- Engajou com 3+ posts da marca
→ Mensagem: benefício principal, tirando objeção, depoimento

**Frio (têm o perfil mas não interagiram com venda):**
- Seguidores do Instagram
- Lista de email geral
- Visitantes únicos do site sem comportamento de compra
→ Mensagem: apresentação do produto, caso de sucesso, proposta de valor

### ETAPA 2 — Copy por Temperatura
Estrutura de mensagem para cada camada:
- **Quente:** "[Nome do produto] ainda está esperando por você. Aproveite antes de encerrar."
- **Morno:** "[Benefício principal] — veja o que [fulano] conseguiu em [prazo]."
- **Frio:** "Você ainda não conhece [produto]? Veja por que [público similar] usa."

### ETAPA 3 — Configuração de Exclusões
O que EXCLUIR de cada campanha:
- Compradores: excluir de todas as campanhas de aquisição
- Quente: excluir dos grupos frio e morno
- Teste: nunca deixar mesma pessoa ver dois anúncios contraditórios

### ETAPA 4 — Frequência e Fadiga
- Frequência máxima para público quente: 3-4 por semana
- Frequência máxima para público frio: 1-2 por semana
- Sinal de fadiga: CTR caindo + CPM subindo → trocar criativo
- Janela de reativação: se não converteu em 30 dias, sair do retargeting por 60 dias

### ETAPA 5 — Criativos por Camada
Recomendação de formato por temperatura:
- Quente: stories com CTA direto (swipe up para comprar)
- Morno: carrossel com depoimentos + benefícios
- Frio: reels de apresentação + post de feed com educação

## Output

```
[SEGMENTAÇÃO POR TEMPERATURA] — definição das 3 camadas
[COPY POR CAMADA] — mensagem adaptada para cada temperatura
[CONFIGURAÇÃO DE EXCLUSÕES] — o que excluir de cada campanha
[REGRAS DE FREQUÊNCIA] — teto de impressões e sinais de fadiga
[CRIATIVOS RECOMENDADOS] — formato ideal por temperatura
```

## Regras

- Compradores sempre excluídos das campanhas de venda — básico ignorado por muitos
- Frequência alta no público quente é aceitável — estão perto da decisão
- Nunca mostrar preço cheio para quem já viu desconto — gera desconfiança
- Retargeting sem exclusão = pagar para annoyer quem já comprou
