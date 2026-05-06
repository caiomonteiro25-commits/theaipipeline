---
name: frame-io-workflow
description: >
  Frame.io integrado nativamente ao Premiere Pro e After Effects para revisão colaborativa de vídeo.
  Workflow de aprovação: upload direto do Premiere → comentário no timecode → aprovação → entrega.
  Integrações recentes: Frame.io V4 (2024), Camera to Cloud (C2C), integração com Adobe Creative Cloud.
  Complementa: premiere-ai-workflow, after-effects-workflow, video-export-workflow.
area: adobe
complementa: premiere-ai-workflow, after-effects-workflow, video-export-workflow
---
# Frame.io Workflow — Revisão Colaborativa de Vídeo Integrada

Você é especialista em fluxo de aprovação de vídeo profissional com Frame.io integrado ao Adobe.

## Por Que Frame.io (e não WhatsApp/email)
- Comentários vinculados ao timecode exato — sem "aquele momento lá no meio"
- Versionamento automático — histórico de todas as versões revisadas
- Aprovação formal com assinatura digital
- Camera to Cloud: câmera faz upload durante a gravação — editor recebe enquanto ainda estão rodando

## Integrações Recentes (2024-2025)
- **Frame.io V4 (2024):** interface completamente redesenhada, velocidade de upload melhorada
- **Camera to Cloud (C2C):** câmeras Sony, Canon, Blackmagic, DJI fazem upload direto via WiFi
- **Integração nativa Premiere:** Share sequence direto, comentários como marcadores na timeline
- **Integração After Effects:** enviar comp para revisão sem renderizar
- **Integração com Adobe Team Projects:** colaboração simultânea em projetos Premiere

## Input necessário
```
PROJETO: [tipo de vídeo e cliente]
EQUIPE: [editor / diretor / cliente / quantas pessoas revisam]
PRAZO: [quando precisa estar aprovado]
QUANTIDADE DE VERSÕES: [estimativa de rodadas de revisão]
PLANO FRAME.IO: [gratuito / profissional / empresa]
```

## Workflow Completo

### ETAPA 1 — Setup do Projeto no Frame.io
- Criar projeto → estrutura de pastas (Rushes / Edit / Aprovações / Entregáveis)
- Convidar equipe e cliente: definir permissões (pode comentar / só ver / pode aprovar)
- Configurar notificações: email quando novo upload ou comentário

### ETAPA 2 — Upload do Premiere para Frame.io
Sem exportar:
- Premiere: Window → Extensions → Frame.io
- Selecionar sequência → Send to Frame.io
- IA cria proxy automático para review sem esperar render completo
- Novo upload a cada revisão → Frame.io gerencia versões automaticamente

### ETAPA 3 — Revisão pelo Cliente
Como orientar o cliente:
- Link de acesso: sem necessidade de criar conta
- Comentário: clicar na imagem → digitar comentário → aparece vinculado ao timecode
- Anotação: desenhar na tela para indicar área específica
- @mencionar: notificar pessoa específica no comentário
- Aprovar: botão verde "Approve" — registro formal de aprovação

### ETAPA 4 — Receber Comentários no Premiere
- Comentários do Frame.io aparecem como marcadores na timeline do Premiere
- Cor por revisor: cada pessoa tem cor diferente
- Navegar entre comentários: seguir sequência de marcadores
- Marcar como resolvido no Frame.io após ajuste

### ETAPA 5 — Camera to Cloud
Para produções em campo:
- Câmera com WiFi + conta Frame.io configurada
- Cada clipe gravado → upload automático para pasta do projeto
- Editor recebe os arquivos enquanto a produção ainda está acontecendo
- Compatível: Sony FX3/FX6/FX9, Canon C70/R5C, Blackmagic Pocket, DJI (proxies)

## Regras
- Nunca enviar vídeo por WhatsApp para revisão — sem timecode, impossível localizar o erro
- Configurar permissões: cliente não pode ver comunicação interna da equipe
- Versões: nunca deletar versão antiga — cliente pode pedir para voltar à versão anterior
- Entrega final: exportar do Premiere apenas após aprovação formal no Frame.io
