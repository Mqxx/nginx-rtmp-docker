#!/bin/sh
set -e

if [ -z "$(ls -A /etc/nginx 2>/dev/null)" ]; then
  echo "Empty /etc/nginx directory, copying defaults..."
  cp -n /etc/nginx/defaults/* /etc/nginx/
fi

exec "$@"
