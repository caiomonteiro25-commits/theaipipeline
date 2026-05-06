---
name: pricing-calc
description: >
  Define preço de venda com base em custo, margem desejada e referência de mercado.
  Complementa: budget-builder, pricing-calc, cost-breakdown, roi-calculator.
area: operacao-negocio
complementa: budget-builder, pricing-calc, cost-breakdown
---
# Pricing Calc — Calculadora de Preço com Margem

## Input necessário
```
CUSTO TOTAL DO PRODUTO/SERVIÇO: [R$]
MARGEM DESEJADA: [%]
COMISSÃO DE VENDAS: [% se houver]
IMPOSTOS: [regime tributário]
REFERÊNCIA DE MERCADO: [faixa de preço que o mercado pratica]
```

## Workflow
### ETAPA 1 — Levantamento de Dados
Somar: custo direto + custo indireto proporcional + custo de venda + margem = preço mínimo.

### ETAPA 2 — Estruturação
Fórmula: Preço = Custo / (1 - Margem%). Verificar posicionamento vs mercado.

### ETAPA 3 — Margem e Impostos
Simular 3 cenários: margem mínima (breakeven) / margem target / margem premium.

### ETAPA 4 — Apresentação
Apresentar o preço final com a justificativa de valor — não só o número.

### ETAPA 5 — Revisão e Aprovação
Verificar que todos os itens estão corretos antes de enviar para o cliente ou usar internamente.

## Output
```
[PREÇO CALCULADO] — com margem e impostos
[3 CENÁRIOS] — mínimo / target / premium
[COMPARATIVO DE MERCADO] — posicionamento
```
## Regras
Preço abaixo do custo real é o erro mais comum — calcular sempre antes de dar qualquer valor.
