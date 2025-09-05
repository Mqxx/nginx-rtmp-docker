#!/bin/sh
set -e

mkdir -p /etc/nginx/defaults
touch /etc/nginx/defaults/nginx.conf

if [ ! -f /etc/nginx/nginx.conf ]; then
  echo "No nginx.conf found, copying defaults..."
  cp -ar /etc/nginx/defaults/. /etc/nginx/
fi

exec "$@"
