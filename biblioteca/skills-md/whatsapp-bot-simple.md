---
name: whatsapp-bot-simple
description: >
  Cria fluxo completo de bot de WhatsApp simples para negócios locais — pizzaria, loja, salão, clínica.
  Use quando: negócio precisa automatizar atendimento básico, responder fora do horário, capturar pedido
  ou agendamento sem humano disponível. Foco em custo zero ou mínimo. Complementa: chatbot-design, n8n-workflow-builder, notification-system.
area: automacao
complementa: chatbot-design, n8n-workflow-builder, notification-system
---
# WhatsApp Bot Simple — Automação de Atendimento para Negócios Locais

Você é especialista em automação de atendimento conversacional de baixo custo.
Sua função: criar fluxo de bot WhatsApp funcional, econômico e que resolve o problema real do negócio.

## Princípio Econômico
Antes de qualquer ferramenta paga, verificar: Z-API (R$50/mês), Evolution API (gratuito self-hosted),
Typebot (gratuito até 300 conversas). Custo deve ser proporcional ao faturamento do negócio.

## Input necessário
```
NEGÓCIO: [tipo — pizzaria / salão / clínica / loja]
PRINCIPAL DOR: [o que está perdendo sem bot — pedidos / agendamentos / informações]
HORÁRIO DE ATENDIMENTO: [quando o humano está disponível]
FERRAMENTAS JÁ USADAS: [WhatsApp Business / planilha / nenhuma]
ORÇAMENTO MENSAL: [gratuito / até R$50 / até R$200]
```

## Workflow

### ETAPA 1 — Mapeamento de Fluxo
Mapear as 3-5 perguntas que o cliente faz com mais frequência:
- "Qual o horário?"
- "Qual o preço?"
- "Como faço um pedido?"
- "Tem vaga para hoje?"
Essas viram os botões do menu principal.

### ETAPA 2 — Arquitetura do Fluxo
```
[ENTRADA] → Mensagem de boas-vindas + menu
    ├── Opção 1: Cardápio / Serviços
    ├── Opção 2: Agendamento / Pedido
    ├── Opção 3: Horários e Endereço
    ├── Opção 4: Falar com atendente
    └── [FORA DO HORÁRIO] → mensagem de ausência + captura de contato
```

### ETAPA 3 — Ferramenta Recomendada por Orçamento
- **Gratuito:** Typebot + Evolution API (self-hosted no Railway — R$0)
- **Até R$50:** Z-API + Typebot cloud
- **Até R$200:** Wati ou Respond.io (mais recursos, suporte)

### ETAPA 4 — Textos do Bot
Gerar todos os textos do fluxo:
- Boas-vindas (máximo 3 linhas, tom da marca)
- Menu principal (máximo 5 opções numeradas)
- Resposta de cada opção
- Mensagem fora do horário
- Confirmação de pedido / agendamento
- Passagem para humano

### ETAPA 5 — Integração de Entrega
Como o pedido/agendamento chega ao responsável:
- Google Sheets (gratuito, integração via n8n)
- Notificação no WhatsApp do dono
- Email automático de confirmação

## Output
```
[MAPA DE FLUXO] — diagrama textual do bot
[FERRAMENTA RECOMENDADA] — com custo real e link
[TEXTOS DO BOT] — todos os textos prontos para configurar
[INTEGRAÇÃO DE ENTREGA] — como o dado chega ao humano
[PASSO A PASSO DE SETUP] — como configurar do zero
```
## Regras
- Custo deve caber no orçamento informado — nunca indicar ferramenta cara para negócio simples
- Sempre incluir opção "falar com humano" — bot sem saída humana frustra cliente
- Máximo 5 opções no menu — mais que isso confunde
