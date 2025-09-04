# Nginx RTMP Docker

Use with `compose.yml`:
```yml
services:
  nginx-service:
    container_name: 'nginx-service'
    image: ghcr.io/Mqxx/nginx-rtmp-docker:latest
    ports:
      - '80:80' # HTTP
      - '443:443' # HTTPS
      - '1935:1935' # RTMP

    volumes:
      - './data/nginx:/etc/nginx'

    restart: unless-stopped
```
