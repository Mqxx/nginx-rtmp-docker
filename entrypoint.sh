#!/bin/sh
set -e


if [ ! -f /etc/nginx/nginx.conf ]; then
  echo "No nginx.conf found, copying defaults..."
  cp -ar /etc/nginx/defaults/. /etc/nginx/
fi

exec "$@"
