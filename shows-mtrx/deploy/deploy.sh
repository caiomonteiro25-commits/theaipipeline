#!/usr/bin/env bash
# Publica shows.mtrx.com.br na VPS da Hostinger.
#
#   VPS=root@187.127.42.210 EMAIL=seu@email ./shows-mtrx/deploy/deploy.sh --setup   # 1ª vez: nginx + site + HTTPS
#   VPS=root@187.127.42.210 ./shows-mtrx/deploy/deploy.sh                           # depois: só atualiza a agenda
#
# Só index.html e shows.json vão pra VPS — materiais/ nunca sai do repositório.
set -euo pipefail

: "${VPS:?defina VPS=usuario@ip-da-vps}"
DOMAIN="shows.mtrx.com.br"
REMOTE_DIR="/var/www/$DOMAIN"
HERE="$(cd "$(dirname "$0")" && pwd)"
SRC="$(dirname "$HERE")"

if [[ "${1:-}" == "--setup" ]]; then
  : "${EMAIL:?defina EMAIL=seu@email para o certificado HTTPS}"
  scp "$HERE/nginx.conf" "$VPS:/tmp/$DOMAIN.conf"
  ssh "$VPS" bash -s -- "$DOMAIN" "$REMOTE_DIR" "$EMAIL" <<'EOF'
set -euo pipefail
DOMAIN="$1"; REMOTE_DIR="$2"; EMAIL="$3"
# Não instalar nginx por cima de outro serviço que já atende a porta 80 (ex.: Traefik/Docker)
if ss -ltnp 'sport = :80' | grep -q LISTEN && ! ss -ltnp 'sport = :80' | grep -q nginx; then
  echo "Porta 80 já está em uso por outro serviço:" >&2
  ss -ltnp 'sport = :80' >&2
  exit 1
fi
command -v nginx >/dev/null || { apt-get update -y && apt-get install -y nginx; }
command -v certbot >/dev/null || apt-get install -y certbot python3-certbot-nginx
mkdir -p "$REMOTE_DIR"
mv "/tmp/$DOMAIN.conf" "/etc/nginx/sites-available/$DOMAIN"
ln -sf "/etc/nginx/sites-available/$DOMAIN" "/etc/nginx/sites-enabled/$DOMAIN"
nginx -t
systemctl reload nginx
certbot --nginx -d "$DOMAIN" --non-interactive --agree-tos -m "$EMAIL" --redirect
EOF
fi

ssh "$VPS" "mkdir -p '$REMOTE_DIR'"
scp "$SRC/index.html" "$SRC/shows.json" "$VPS:$REMOTE_DIR/"
echo "Publicado: https://$DOMAIN"
