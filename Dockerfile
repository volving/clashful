FROM ghcr.io/haishanh/yacd:master

LABEL maintainer="v"

EXPOSE 80
COPY ./clash /opt/clash/
COPY ./nginx.conf /etc/nginx/nginx.conf
# COPY ./config.yaml /opt/clash/
# COPY ./docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /opt/clash/

CMD ["/opt/clash/clash", "-f", "/opt/clash/config.yaml", "&&", "/docker-entrypoint.sh"]


