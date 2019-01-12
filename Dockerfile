#
# Dockerfile for dnsmasq
#

FROM alpine
LABEL maintainer="Ricky Li <cnrickylee@gmail.com>"

RUN set -ex \
 && apk add --no-cache dnsmasq

EXPOSE 53/tcp 53/udp

ENTRYPOINT ["dnsmasq", "--keep-in-foreground"]
