---
name: cost-breakdown
description: >
  Desmembra custos de produção, evento ou projeto linha a linha para análise e apresentação.
  Complementa: budget-builder, pricing-calc, cost-breakdown, roi-calculator.
area: operacao-negocio
complementa: budget-builder, pricing-calc, cost-breakdown
---
# Cost Breakdown — Breakdown de Custos Linha a Linha

## Input necessário
```
PROJETO: [nome]
CATEGORIAS DE CUSTO: [fixos / variáveis / diretos / indiretos]
PERÍODO: [por hora / por dia / por projeto / mensal]
MOEDA: [BRL / USD / EUR]
```

## Workflow
### ETAPA 1 — Levantamento de Dados
Listar cada item de custo separadamente. Nenhum custo oculto ou agrupado sem justificativa.

### ETAPA 2 — Estruturação
Separar custos fixos (existem mesmo sem projeto) de variáveis (existem só se o projeto acontece).

### ETAPA 3 — Margem e Impostos
Calcular custo por hora ou por unidade para referência futura.

### ETAPA 4 — Apresentação
Gráfico de distribuição de custos por categoria para visualização rápida.

### ETAPA 5 — Revisão e Aprovação
Verificar que todos os itens estão corretos antes de enviar para o cliente ou usar internamente.

## Output
```
[TABELA DE CUSTOS] — item a item
[DISTRIBUIÇÃO] — % por categoria
[CUSTO UNITÁRIO] — por hora ou por entrega
```
## Regras
Todo custo deve ter dono e justificativa — custo sem clareza é custo que cresce.
