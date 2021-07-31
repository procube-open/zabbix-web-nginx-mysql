FROM zabbix/zabbix-web-nginx-mysql:alpine-5.4.1

ENV PHP_TZ Asia/Tokyo
USER root
RUN apk update && apk upgrade
RUN apk add font-noto font-noto-cjk
RUN fc-cache -fv
RUN ln -f -s /usr/share/fonts/noto/NotoSansCJK-Regular.ttc /usr/share/zabbix/assets/fonts/DejaVuSans.ttf
USER zabbix