---
name: budget-builder
description: >
  Orçamento completo com custos, margem, impostos e total apresentável ao cliente.
  Complementa: budget-builder, pricing-calc, cost-breakdown, roi-calculator.
area: operacao-negocio
complementa: budget-builder, pricing-calc, cost-breakdown
---
# Budget Builder — Montagem de Orçamento Profissional

## Input necessário
```
PROJETO: [o que está sendo orçado]
ITENS DE CUSTO: [listar ou pedir para mapear]
MARGEM DESEJADA: [% de lucro esperado]
IMPOSTOS: [regime tributário — MEI / Simples / Lucro Presumido]
FORMATO: [para cliente / interno / ambos]
```

## Workflow
### ETAPA 1 — Levantamento de Dados
Mapear todos os custos por categoria: mão de obra, material, serviços terceiros, overhead, impostos.

### ETAPA 2 — Estruturação
Organizar em tabela: Item | Quantidade | Valor Unitário | Valor Total. Subtotal por categoria.

### ETAPA 3 — Margem e Impostos
Aplicar margem sobre o custo total. Calcular impostos sobre o preço final.

### ETAPA 4 — Apresentação
Versão para cliente: clara, sem jargão interno, com total em destaque. Versão interna com todos os detalhes.

### ETAPA 5 — Revisão e Aprovação
Verificar que todos os itens estão corretos antes de enviar para o cliente ou usar internamente.

## Output
```
[ORÇAMENTO COMPLETO] — tabela com todos os itens
[RESUMO EXECUTIVO] — total por categoria
[VERSÃO CLIENTE] — formato limpo para apresentar
```
## Regras
Nunca ocultar custo para parecer mais barato — custos ocultos aparecem no projeto e destroem a relação.
