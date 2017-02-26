FROM alpine
RUN apk add --update strongswan && \
    rm -rf /var/cache/apk/*

RUN apk add --no-cache tftp-hpa
VOLUME /etc/ipsec.d/private/vpn_private.key
VOLUME /etc/ipsec.d/certs/vpn_public.crt
VOLUME /etc/ipsec.d/cacerts/caCert_Intermediate.crt

EXPOSE 500/udp 4500/udp
ENTRYPOINT ["/entrypoint.sh"]

