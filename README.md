# Nginx RTMP Module Docker

Use with `compose.yml`:
```yml
services:
  nginx-service:
    image: ghcr.io/Mqxx/nginx-rtmp-module-docker:latest
    ports:
      - 1935:1935
      - 8081:80

    volumes:
      - ./data/nginx:/etc/nginx
```
