FROM alpine:3.15

RUN apk add --no-cache squid

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

VOLUME /var/cache/squid

ENTRYPOINT ["entrypoint.sh"]

CMD ["-f", "/etc/squid/squid.conf", "-NYC"]
