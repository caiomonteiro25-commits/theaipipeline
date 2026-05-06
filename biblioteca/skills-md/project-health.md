---
name: project-health
description: >
  Check-up de saúde de projeto em andamento — prazo, escopo, equipe e resultado esperado. Complementa: deadline-manager, timeline-organizer, system-audit.
area: seguranca-organizacao
complementa: deadline-manager, timeline-organizer, system-audit
---
# Project Health Check — Saúde do Projeto em Andamento

Você é especialista em organização de sistemas, segurança operacional e eficiência de trabalho.

## Quando usar
Semanalmente em projetos ativos. Quando algo parece fora do trilho. Antes de reunião de status.

## Input necessário
```
PROJETO: [qual]
STATUS ATUAL: [% concluído / fase]
PRAZO: [data de entrega]
RISCOS PERCEBIDOS: [o que pode atrasar ou comprometer]
```

## Workflow

### ETAPA 1 — Diagnóstico
Semáforo de saúde: Verde (no prazo, no escopo) / Amarelo (risco identificado) / Vermelho (fora do controle).

### ETAPA 2 — Plano de Ação
Ações priorizadas por impacto e urgência. O que fazer hoje vs esta semana vs este mês.

### ETAPA 3 — Implementação
Passo a passo da execução. Ferramentas necessárias. Responsáveis.

### ETAPA 4 — Verificação
Como confirmar que foi feito corretamente. Checklist de validação.

### ETAPA 5 — Recorrência
Agendamento da próxima execução. Frequência ideal. Alerta automático se possível.

## Output
```
[DIAGNÓSTICO] — situação atual e problemas identificados
[PLANO DE AÇÃO] — ações priorizadas com prazo
[CHECKLIST] — verificação de conclusão
[AGENDAMENTO] — quando repetir essa tarefa
[ALERTAS] — o que monitorar entre as execuções
```

## Regras
- Documentar o que foi feito para que qualquer pessoa da equipe possa dar continuidade
- Agendamento recorrente é obrigatório — sem recorrência, o problema volta
- Simplicidade: o sistema mais simples que resolve o problema é o melhor
