FROM zabbix/zabbix-web-nginx-mysql:8.0-alpine-latest

USER root
RUN apk add --no-cache font-noto-cjk && \
    ln -sf /usr/share/fonts/noto/NotoSansCJK-Regular.ttc /usr/share/zabbix/assets/fonts/DejaVuSans.ttf
USER zabbix
