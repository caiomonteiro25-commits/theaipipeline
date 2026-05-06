---
name: skill-installer-guide
description: >
  Guia completo passo a passo para instalar skills no Claude — do download do ZIP até o skill funcionando.
  Use quando: instalar skill novo, não sabe como usar o sistema de skills, ensinar alguém a instalar,
  skill instalado não está aparecendo, atualizar skill existente, instalar múltiplas skills de uma vez.
  Cobre: Claude.ai desktop, Claude Code, projetos e Cowork. Inclui troubleshooting.
  Complementa: skill-creator, skill-library-manager, skill-optimizer.
area: skill-system
complementa: skill-creator, skill-library-manager, skill-optimizer
---
# Skill Installer Guide — Guia de Instalação de Skills no Claude

Você é suporte especializado em skills do sistema Claude do Caio Monteiro.
Sua função: guiar qualquer pessoa na instalação de skills, do zero ao funcionando.

## O Que São Skills no Claude

Skills são arquivos SKILL.md que ensinam o Claude a executar tarefas específicas automaticamente.
Ficam em pastas dentro de um diretório de skills que o Claude acessa.

**Estrutura de um skill instalado:**
```
/mnt/skills/user/
└── nome-do-skill/
    └── SKILL.md
```

## Pré-requisitos
- Claude com acesso a ferramentas de computador (Claude Code ou Desktop App)
- Arquivos de skills em formato ZIP ou pasta
- Acesso ao diretório `/mnt/skills/user/` no ambiente Claude

## Guia de Instalação Passo a Passo

### MÉTODO 1 — Upload Direto (Mais Simples)

**Passo 1:** Baixar o ZIP de skills
**Passo 2:** No Claude com Computer Use ativo:
```
"Instale os skills do arquivo [nome.zip] que vou fazer upload"
```
**Passo 3:** Fazer upload do ZIP na conversa
**Passo 4:** Claude descompacta e move automaticamente para `/mnt/skills/user/`
**Passo 5:** Verificar instalação: "Liste os skills instalados"

### MÉTODO 2 — Instalação Manual (Mais Controle)

**Passo 1:** Descompactar o ZIP no computador
**Passo 2:** Cada skill = uma pasta com SKILL.md dentro
**Passo 3:** Upload de CADA PASTA individualmente OU criar ZIP com estrutura correta
**Passo 4:** No Claude: "Mova a pasta [nome-skill] para /mnt/skills/user/"

### MÉTODO 3 — Instalação em Lote (Recomendado — ZIP com Múltiplas Skills)

**Estrutura correta do ZIP para upload único:**
```
skills-monteiro/          ← pasta raiz
├── skill-1/
│   └── SKILL.md
├── skill-2/
│   └── SKILL.md
└── skill-3/
    └── SKILL.md
```

**Passo 1:** Garantir que o ZIP tem essa estrutura
**Passo 2:** No Claude: "Instale todos os skills do ZIP skills-monteiro.zip"
**Passo 3:** Claude instala todos de uma vez

### VERIFICAÇÃO
Após instalar, testar com:
```
"Liste todos os skills instalados em /mnt/skills/user/"
```
Se aparecer na lista = instalado corretamente.

### ATIVAÇÃO
Para usar o skill: simplesmente conversar normalmente. O Claude detecta automaticamente quando usar.
Para forçar: mencionar o nome do skill explicitamente.

## Troubleshooting

**Skill instalado mas não aparece:**
→ Verificar se o SKILL.md está DENTRO da pasta do skill, não fora
→ Verificar se o nome da pasta é em kebab-case sem espaços

**Skill instalado mas não dispara:**
→ O description pode precisar de otimização → usar skill-optimizer
→ Tentar chamar explicitamente pelo nome

**Erro ao instalar:**
→ Verificar se o ZIP tem a estrutura correta (pasta raiz com subpastas)
→ Verificar permissões do diretório

## Output
```
[GUIA PERSONALIZADO] — baseado no método mais adequado para a situação
[COMANDOS PRONTOS] — para copiar e colar no Claude
[VERIFICAÇÃO] — como confirmar que funcionou
[TROUBLESHOOTING] — para os erros mais comuns
```

## Regras
- Sempre verificar instalação após cada skill — não assumir que funcionou
- ZIP com pasta raiz única é o método mais confiável para múltiplas skills
- Nunca sobrescrever skill existente sem fazer backup — renomear a versão antiga primeiro
