---
name: invoice-gen
description: >
  Invoice e recibo profissional com todos os campos necessários para qualquer tipo de cobrança.
  Complementa: budget-builder, pricing-calc, cost-breakdown, roi-calculator.
area: operacao-negocio
complementa: budget-builder, pricing-calc, cost-breakdown
---
# Invoice Gen — Gerador de Invoice e Recibo Profissional

## Input necessário
```
EMITENTE: [nome, CPF/CNPJ, endereço]
DESTINATÁRIO: [nome, CPF/CNPJ, endereço]
SERVIÇO/PRODUTO: [descrição]
VALOR: [R$]
FORMA DE PAGAMENTO: [PIX / boleto / cartão / dinheiro]
```

## Workflow
### ETAPA 1 — Levantamento de Dados
Coletar dados do emitente e destinatário. Verificar dados fiscais antes de emitir.

### ETAPA 2 — Estruturação
Campos obrigatórios: número do documento, data, competência, descrição detalhada, valor, dados fiscais.

### ETAPA 3 — Margem e Impostos
Verificar se a nota fiscal deve ser emitida e qual o tipo: NF-e, NFS-e, recibo simples.

### ETAPA 4 — Apresentação
Revisar todos os dados antes de enviar. Erro em invoice causa problema no pagamento.

### ETAPA 5 — Revisão e Aprovação
Verificar que todos os itens estão corretos antes de enviar para o cliente ou usar internamente.

## Output
```
[INVOICE/RECIBO COMPLETO] — pronto para enviar
[DADOS FISCAIS] — o que verificar antes de emitir
[MODELO DE EMAIL] — texto para enviar junto
```
## Regras
Invoice sem número sequencial e dados fiscais corretos pode ser recusado pelo departamento financeiro.
