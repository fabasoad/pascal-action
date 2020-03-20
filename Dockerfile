FROM alpine:3.11.3

RUN apk update ;\
    apk add fp-compiler

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]