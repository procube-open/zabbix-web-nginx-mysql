FROM zabbix/zabbix-web-nginx-mysql:6.0-alpine

USER root
RUN apk add --no-cache font-noto-cjk && \
    ln -sf /usr/share/fonts/noto/NotoSansCJK-Regular.ttc /usr/share/zabbix/assets/fonts/DejaVuSans.ttf
USER zabbix
