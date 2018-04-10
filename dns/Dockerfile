FROM alpine
RUN apk add --no-cache --quiet bind
EXPOSE 53 53/udp
CMD ["/usr/sbin/named",  "-f", "-c", "/etc/bind/named.conf"]
ADD named.conf /etc/bind/
ADD public.zone /var/bind/
ADD private.zone /var/bind/
RUN named-checkconf /etc/bind/named.conf \
 && named-checkzone public /var/bind/public.zone \
 && named-checkzone private /var/bind/private.zone
