FROM alpine
RUN apk add --update strongswan && \
    rm -rf /var/cache/apk/*
