---
name: economic-audit
description: >
  Audita qualquer sistema de automação para identificar desperdício de custo e oportunidades de melhoria.
  Use quando: conta de automação cara sem retorno claro, revisar stack existente, justificar ou questionar
  investimento em automação para cliente ou sócio. Complementa: automation-architecture, report-automation.
area: automacao
complementa: automation-architecture, report-automation, system-audit
---
# Economic Audit — Auditoria Econômica de Sistema de Automação

## Princípio Central
Uma automação só se justifica se: custo da automação < custo humano de fazer manualmente OU
se a automação gera resultado que humano não conseguiria (velocidade, escala, disponibilidade 24h).

## Input necessário
```
FERRAMENTAS USADAS: [listar todas com custo mensal]
PROCESSOS AUTOMATIZADOS: [o que cada ferramenta faz]
TEMPO ECONOMIZADO: [horas/mês estimadas]
VALOR DA HORA HUMANA: [quanto custa a hora de quem faria manualmente]
RESULTADO GERADO: [o que a automação gera — leads / vendas / satisfação]
```

## Workflow

### ETAPA 1 — Inventário de Custo
Tabela completa: Ferramenta | Custo Mensal | Função | Poderia ser substituída por?

### ETAPA 2 — Cálculo de ROI por Automação
- Custo da automação (R$/mês)
- Horas economizadas (h/mês) × valor da hora (R$/h) = economia humana
- ROI = (economia humana - custo automação) / custo automação × 100%
- Se ROI < 0 → automação não se paga → revisar ou eliminar

### ETAPA 3 — Identificação de Desperdício
Red flags de custo desnecessário:
- Ferramenta paga fazendo o que o n8n self-hosted faria de graça
- Plano alto com baixo volume de uso (< 30% do limite)
- Ferramenta duplicada com função similar
- Automação rodando mas sem uso real (workflow ativo sem execuções)

### ETAPA 4 — Oportunidades de Consolidação
- Quais processos manuais ainda existem que deveriam ser automatizados
- Onde a automação está incompleta (parcialmente manual)
- Integrações quebradas ou sem manutenção

### ETAPA 5 — Plano de Otimização
Ações priorizadas por impacto financeiro:
- Imediato (esta semana): cancelar o que não usa
- Curto prazo (30 dias): migrar para alternativa mais barata
- Médio prazo (90 dias): implementar o que está manual e deveria ser automático

## Output
```
[INVENTÁRIO COMPLETO] — todas as ferramentas com custo real
[ROI POR AUTOMAÇÃO] — o que se paga e o que não se paga
[DESPERDÍCIOS IDENTIFICADOS] — o que cortar imediatamente
[PLANO DE OTIMIZAÇÃO] — ações com impacto estimado em R$/mês
[STACK IDEAL] — como o sistema deveria estar configurado
```
