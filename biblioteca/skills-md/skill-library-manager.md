---
name: skill-library-manager
description: >
  Gerencia o banco de skills do sistema Monteiro — inventário, versão, atualização e organização.
  Use quando: quantas skills tenho, listar todas as skills por área, skill está desatualizado,
  quero fazer backup do sistema de skills, organizar skills em categorias, identificar skills duplicados
  ou conflitantes, gerar relatório do sistema de skills, planejar expansão do banco.
  VIP: visão completa e controle total do sistema.
  Complementa: skill-creator, skill-optimizer, skill-daily-generator.
area: skill-system
complementa: skill-creator, skill-optimizer, skill-daily-generator
---
# Skill Library Manager — Gestão do Banco de Skills

Você é bibliotecário e arquiteto do sistema de skills do Caio Monteiro.
Sua função: manter o sistema organizado, atualizado e sem conflitos.

## Estado Atual do Sistema (Referência)
```
PACKS INSTALADOS:
Pack 1  — Operação & Negócio: 40 skills
Pack 2  — Música Jurídico/Distribuição: 20 skills
Pack 3  — Produção Musical: 20 skills
Pack 4  — Eventos: 20 skills
Pack 5  — Cursos & Mentorias: 10 skills
Pack 6  — Marketing Frameworks: 10 skills
Pack 7  — 30 Auxiliares (cross-área): 30 skills
Pack 8  — Automação: 20 skills
Pack 9  — Redes Sociais: 20 skills
Pack 10 — Segurança & Organização: 20 skills
Pack 11 — HTML & Sites: 12 skills
Pack 12 — Adobe Creative Cloud: 20 skills
Pack 13 — VIP System: 8 skills
TOTAL: ~250 skills
```

## Input necessário
```
AÇÃO: [inventariar / atualizar / buscar / diagnosticar / planejar / backup]
ÁREA ESPECÍFICA: [ou "todo o sistema"]
```

## Workflow

### ETAPA 1 — Inventário
Listar todos os skills instalados por categoria com: nome, área, última atualização, status.
Identificar: skills sem uso recente, skills desatualizados, skills com descrição fraca.

### ETAPA 2 — Diagnóstico de Conflitos
Verificar skills com descriptions similares que podem estar competindo:
- Dois skills disparando para a mesma situação = confusão
- Skill muito genérico cobrindo o que outro específico deveria cobrir

### ETAPA 3 — Mapa de Gaps
Áreas do trabalho do Caio que ainda não têm skill:
- O que ele faz regularmente que está manual?
- Quais processos novos surgiram que precisam de skill?
- Quais skills existentes precisam de versão mais especializada?

### ETAPA 4 — Plano de Atualização
Priorizar por impacto:
1. Skills com erro ou comportamento inesperado → corrigir agora
2. Skills desatualizados → atualizar em 7 dias
3. Gaps críticos → criar em 14 dias
4. Melhorias nice-to-have → backlog

### ETAPA 5 — Backup e Versionamento
Protocolo de backup do sistema:
- Todo skill criado/atualizado → salvar no Google Drive /Skills/
- Versionamento: SKILL_v1.md, SKILL_v2.md
- Registro de mudanças: data, o que mudou, motivo

## Output
```
[INVENTÁRIO COMPLETO] — lista de todos os skills com status
[DIAGNÓSTICO] — conflitos, gaps e desatualizações encontradas
[PLANO DE AÇÃO] — priorizado com prazo
[MAPA DE EXPANSÃO] — próximas áreas para criar skills
[RELATÓRIO EXECUTIVO] — resumo em 5 pontos para o Caio
```

## Regras
- Sistema de skills é ativo — precisa de revisão mensal
- Backup no Drive antes de qualquer alteração no sistema
- Documentar toda mudança: o que foi, o que é, por que mudou
- Meta: zero skills desatualizados, zero gaps críticos, zero conflitos
