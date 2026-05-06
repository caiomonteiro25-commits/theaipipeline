---
name: crm-automation
description: >
  Automatiza o funil completo de CRM: captura de lead, qualificação, proposta, follow-up e fechamento.
  Use quando: time de vendas perdendo lead por falta de follow-up, processo manual de envio de propostas,
  necessidade de pipeline visível e automático. Complementa: whatsapp-bot-advanced, email-automation, lead-automation.
area: automacao
complementa: whatsapp-bot-advanced, email-automation, lead-automation
---
# CRM Automation — Funil de Vendas Automatizado

## Princípio Econômico
CRM recomendado por porte: Notion (gratuito, até 5 pessoas) → Pipedrive (US$15/user) → HubSpot (gratuito até 1M contatos).
Automação sobre o CRM via n8n ou Make — nunca pagar por automação nativa cara.

## Input necessário
```
PROCESSO DE VENDA ATUAL: [como entra o lead hoje e como fecha]
CRM ATUAL: [qual usa ou "nenhum"]
EQUIPE DE VENDAS: [quantas pessoas]
TICKET MÉDIO: [valor do produto/serviço]
MAIOR PROBLEMA: [lead sumindo / sem follow-up / sem visibilidade]
```

## Workflow

### ETAPA 1 — Mapeamento do Funil
Definir etapas do pipeline por nome e critério de avanço:
- Novo Lead → Qualificado → Proposta Enviada → Em Negociação → Fechado (Ganho/Perdido)

### ETAPA 2 — Automações por Etapa
- **Lead novo:** notificação WhatsApp + email boas-vindas + tarefa de qualificação criada
- **Qualificado:** proposta gerada automaticamente com dados do CRM
- **Proposta enviada:** follow-up automático em 2 dias se não abriu
- **Em negociação:** alerta para vendedor se parado há 3+ dias
- **Fechado:** invoice gerado + onboarding iniciado automaticamente

### ETAPA 3 — Follow-up Automático
Sequência de follow-up sem intervenção humana:
- D+1: email de valor (conteúdo relacionado ao produto)
- D+3: WhatsApp de verificação ("Conseguiu ler a proposta?")
- D+7: oferta de call ou demonstração
- D+14: last contact ("Ainda faz sentido conversarmos?")
- D+21: arquivar automaticamente no CRM como "frio"

### ETAPA 4 — Dashboard de Vendas
Métricas geradas automaticamente:
- Leads por etapa (funil visual)
- Taxa de conversão por etapa
- Tempo médio em cada etapa
- Receita fechada vs projetada

### ETAPA 5 — Integração com Outros Sistemas
- WhatsApp: mensagens automáticas de follow-up
- Email: sequência de nutrição
- Google Sheets: backup e relatório
- Nota/Invoice: geração automática no fechamento

## Output
```
[MAPA DO FUNIL] — etapas com critério de avanço
[AUTOMAÇÕES POR ETAPA] — o que acontece automaticamente em cada mudança
[SEQUÊNCIA DE FOLLOW-UP] — textos + timing completo
[DASHBOARD] — métricas e como configurar
[STACK RECOMENDADA] — CRM + automação com custo real
```
