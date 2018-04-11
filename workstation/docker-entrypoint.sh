#!/bin/sh

iptables -t nat -A OUTPUT -p tcp -m owner --gid-owner transprouter -j REDIRECT --to-ports 3128

exec "$@"
