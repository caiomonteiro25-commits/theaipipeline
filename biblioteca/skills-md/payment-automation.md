---
name: payment-automation
description: >
  Automatiza todo o ciclo de pagamento: geração de cobrança, PIX, confirmação e liberação de acesso.
  Use quando: cobranças manuais, esquecimentos de vencimento, liberação manual de acesso pós-pagamento,
  lembrete de boleto em atraso. Complementa: course-automation, event-automation, document-automation.
area: automacao
complementa: course-automation, event-automation, document-automation
---
# Payment Automation — Ciclo Completo de Cobrança e Pagamento

## Princípio Econômico
Asaas (gratuito até R$10k/mês de processamento, 1% por transação PIX) é o melhor custo-benefício BR.
Nunca usar apenas WhatsApp manual para cobrança — custo humano é muito maior que custo da automação.

## Input necessário
```
TIPO DE COBRANÇA: [assinatura recorrente / parcelamento / avulso / pré-venda]
VALOR E FREQUÊNCIA: [R$ / mensal / anual / única]
PLATAFORMA DE PAGAMENTO: [Asaas / PagSeguro / Stripe / Kiwify / Hotmart]
O QUE ACONTECE APÓS PAGAMENTO: [liberar acesso / enviar produto / notificar equipe]
INADIMPLÊNCIA: [como tratar quem não paga]
```

## Workflow

### ETAPA 1 — Fluxo de Cobrança
```
Cadastro do cliente → Geração automática de cobrança (PIX/boleto/cartão)
→ Envio por WhatsApp/email → Confirmação de pagamento
→ Webhook dispara ação → Liberação de acesso/produto
→ Emissão de nota (se necessário) → Registro no financeiro
```

### ETAPA 2 — Automação de PIX BR Code
- Geração de QR Code PIX via Asaas API
- Envio automático por WhatsApp com valor e código copia e cola
- Webhook de confirmação: dispara em segundos após pagamento
- Expiração automática: novo código gerado se expirado

### ETAPA 3 — Régua de Cobrança Automática
- D-5: aviso amigável ("seu vencimento se aproxima")
- D0: cobrança com link de pagamento
- D+1: lembrete 1 ("esqueceu?")
- D+3: lembrete 2 com urgência
- D+7: suspensão de acesso + notificação ao financeiro
- D+15: protocolo de negociação ou baixa

### ETAPA 4 — Pós-Pagamento
Ações automáticas após confirmação:
- Liberar acesso em plataforma (Hotmart/Kiwify/própria)
- Enviar mensagem de boas-vindas com credenciais
- Criar registro no CRM/Google Sheets
- Emitir nota fiscal (se integrado com emissor NF)

### ETAPA 5 — Relatório Financeiro
Automação de consolidação mensal:
- Total recebido por produto/serviço
- Inadimplência atual (valor e número de clientes)
- Projeção do próximo mês (recorrências confirmadas)

## Output
```
[FLUXO COMPLETO] — do cadastro ao recebimento
[RÉGUA DE COBRANÇA] — textos + timing de cada mensagem
[WEBHOOK DE CONFIRMAÇÃO] — como configurar o gatilho pós-pagamento
[AÇÕES PÓS-PAGAMENTO] — o que automatizar após confirmar
[STACK RECOMENDADA] — plataforma + automação com custo BR
```
