FROM alpine:latest
RUN apk add --no-cache --quiet shadow iptables openssh-client curl inotify-tools
RUN useradd -m direct -s /bin/sh \
 && useradd -m transprouter -s /bin/sh
ADD docker-entrypoint.sh /usr/local/bin
ADD update-watcher.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["update-watcher.sh"]
