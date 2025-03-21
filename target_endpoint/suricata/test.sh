#!/bin/sh
dnf -y install iptables-nft
iptables-nft -I INPUT -j NFQUEUE && iptables-nft -I OUTPUT -j NFQUEUE

exec /docker-entrypoint.sh $@