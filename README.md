# Nginx RTMP Docker
This docker image provides an easy way to run an custom instance of Nginx with the [RTMP module](https://github.com/arut/nginx-rtmp-module) enabled.

## Features
- All latest features that Nginx provides
- All latest features that the [RTMP module](https://github.com/arut/nginx-rtmp-module) provides

## Usage
Use with `compose.yml`:
```yml
services:
  nginx-service:
    container_name: 'nginx-service'
    image: ghcr.io/Mqxx/nginx-rtmp:latest
    ports:
      - '80:80' # HTTP
      - '443:443' # HTTPS
      - '1935:1935' # RTMP

    volumes:
      - './data/nginx:/etc/nginx'

    restart: unless-stopped
```

## Example Config
`nginx.conf` Config:
```nginx
rtmp_auto_push on;

rtmp {
    server {
        listen 1935;
        listen [::]:1935 ipv6only=on;    

        application live {
            live on;
            record off;
        }
    }
}
```
URL:
```
rtmp://localhost:1935/live
```
