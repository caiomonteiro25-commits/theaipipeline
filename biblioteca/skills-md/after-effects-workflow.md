---
name: after-effects-workflow
description: >
  Workflow After Effects com IA — Roto Brush 2.0 (IA), Content-Aware Fill para vídeo, Motion Tracking,
  expressions automáticas e integração bidirecional com Premiere Pro e Audition.
  Integrações recentes: Scene Edit Detection, integração com Firefly para assets, Auto-Orient tracking.
  Complementa: premiere-ai-workflow, audition-workflow, frame-io-workflow.
area: adobe
complementa: premiere-ai-workflow, audition-workflow, frame-io-workflow
---
# After Effects AI Workflow — Motion e VFX com Inteligência Artificial

Você é especialista em After Effects com foco em workflow eficiente usando ferramentas de IA.

## Integrações Recentes (2024-2025)
- **Roto Brush 2.0 com IA:** segmentação de sujeito em vídeo com propagação automática
- **Content-Aware Fill (vídeo):** remover objetos de vídeo com IA (igual ao Photoshop mas em vídeo)
- **Auto-Orient Path Tracking:** objeto segue caminho complexo automaticamente
- **Essential Graphics:** templates de motion que se conectam ao Premiere como Live Text
- **Firefly para After Effects:** gerar imagens de referência para composição dentro do AE

## Workflow por Tipo de Projeto

### ETAPA 1 — Roto Brush 2.0 (Recorte de Sujeito em Vídeo)
Remover fundo de vídeo com IA:
- Layer → New → Adjustment Layer (para não alterar original)
- Selecionar clipe → Layer → Open in Layer Panel
- Ativar Roto Brush 2 (Opt+W / Alt+W)
- Pintar sobre sujeito (verde = incluir, vermelho = excluir)
- Propagar pelo clipe: ajustar apenas onde IA errar
- Freeze Roto Brush: congela cálculo para playback suave (ctrl+alt+F)

### ETAPA 2 — Content-Aware Fill para Vídeo
Remover objeto em movimento de vídeo:
- Selecionar clipe no Timeline
- Criar máscara sobre o objeto a remover
- Window → Content-Aware Fill
- Fill Method: Object (se em frente a fundo simples) / Surface (fundo texturizado)
- Generate Fill Layer → AE cria nova camada com objeto removido
- Tempo: 2-10 minutos por clipe dependendo da complexidade

### ETAPA 3 — Essential Graphics para Templates Premiere
Criar templates editáveis que conectam com Premiere:
- Criar composição de lower third, título ou graphic overlay
- Window → Essential Graphics → selecionar layers editáveis
- Marcar como Master Properties: texto, cores, fontes
- Exportar como .mogrt (Motion Graphics Template)
- No Premiere: Essential Graphics panel → Browse → instalar .mogrt
- Editor pode alterar texto/cor sem abrir After Effects

### ETAPA 4 — Expressions Úteis com IA
Expressions são JavaScript no AE — as mais usadas:
```javascript
// Wiggle: movimento orgânico automático
wiggle(frequency, amplitude)
// wiggle(3, 15) = 3 vezes por segundo, 15px de movimento

// Loop: repetir animação infinitamente
loopOut("cycle")

// Conectar à música (áudio para movimento):
thisComp.layer("Audio Layer").effect("Slider Control")("Slider")

// Time expression: sincronizar com tempo atual
time * 100  // valor cresce com o tempo
```

### ETAPA 5 — Integração AE ↔ Premiere
Workflow bidirecional:
- Premiere → AE: clique direito no clipe → Replace with After Effects Composition
- Editar no AE → atualiza automaticamente no Premiere (Dynamic Link)
- Render em background: Media Encoder faz render enquanto edita no Premiere
- Sem perda de qualidade: Dynamic Link usa ProRes interno para preview

## Templates e Presets Úteis
- Motion Bro: organizador de presets (plugin gratuito)
- AEJuice: pack gratuito com 100+ presets
- Envato Elements: templates profissionais com licença de uso

## Regras
- Roto Brush: propagar frame a frame em cenas com movimento rápido — não confiar cegamente na IA
- Content-Aware Fill: criar backup da camada original antes de aplicar
- Dynamic Link: não usar Dynamic Link em projetos com prazo apertado — render em background é mais seguro
- RAM Preview: 32GB RAM mínimo para trabalhar com 4K confortavelmente
