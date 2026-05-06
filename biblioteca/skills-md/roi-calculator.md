---
name: roi-calculator
description: >
  Calcula e apresenta retorno sobre investimento de qualquer ação ou projeto.
  Complementa: budget-builder, pricing-calc, cost-breakdown, roi-calculator.
area: operacao-negocio
complementa: budget-builder, pricing-calc, cost-breakdown
---
# ROI Calculator — Calculadora de Retorno sobre Investimento

## Input necessário
```
INVESTIMENTO: [R$ investido]
RETORNO ESPERADO: [R$ ou % que a ação vai gerar]
PRAZO: [em quanto tempo o retorno se realiza]
COMPARATIVO: [alternativa de uso do mesmo recurso]
```

## Workflow
### ETAPA 1 — Levantamento de Dados
Definir: o investimento é de quanto, por quanto tempo e o que gera de retorno mensurável.

### ETAPA 2 — Estruturação
ROI = (Retorno - Investimento) / Investimento × 100. Calcular também payback (tempo para recuperar).

### ETAPA 3 — Margem e Impostos
Calcular ROI em 3 cenários: conservador / realista / otimista.

### ETAPA 4 — Apresentação
Apresentar em linguagem do decisor: 'Para cada R investido, retorna R em Y meses.'

### ETAPA 5 — Revisão e Aprovação
Verificar que todos os itens estão corretos antes de enviar para o cliente ou usar internamente.

## Output
```
[ROI CALCULADO] — % de retorno
[PAYBACK] — tempo para recuperar o investimento
[3 CENÁRIOS] — conservador / realista / otimista
```
## Regras
ROI conservador é mais valioso que ROI otimista — prometer menos e entregar mais.
