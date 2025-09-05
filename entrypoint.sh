#!/bin/sh
set -e

mkdir -p /etc/nginx/defaults
wget https://raw.githubusercontent.com/nginx/nginx/master/conf/mime.types -O /etc/nginx/defaults/mime.types
touch /etc/nginx/defaults/nginx.conf

if [ -z "$(ls -A /etc/nginx 2>/dev/null)" ]; then
  echo "Empty /etc/nginx directory, copying defaults..."
  cp -n /etc/nginx/defaults/* /etc/nginx/
fi

exec "$@"
