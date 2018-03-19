FROM alpine:latest
RUN apk add --no-cache --quiet shadow iptables openssh-client curl tcpdump
RUN useradd -m direct \
 && useradd -m transprouter
CMD tcpdump -vv
