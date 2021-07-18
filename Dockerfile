FROM cloudflare/cloudflared:2021.7.0 AS cloudflared

FROM ghcr.io/linuxserver/syncthing
COPY --from=cloudflared /usr/local/bin/cloudflared /usr/local/bin/cloudflared
COPY services.d/cloudflared /etc/services.d/cloudflared
