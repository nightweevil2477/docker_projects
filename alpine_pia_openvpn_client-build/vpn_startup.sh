#!/usr/bin/env bash

#Link custom DNS file
echo > /config/resolv.conf
ln -s /etc/resolv.conf -f /config/resolv.conf
echo 'nameserver 10.0.0.243' > /config/resolv.conf

#Allow host and docker communication
LAN_INTERFACE_NAME=$(ip r | grep 'default via' | cut -d" " -f 5)
DEFAULT_LAN_GATEWAY_IP=$(ip r | grep 'default via' | cut -d" " -f 3)

#Create table for exclusions for when openvpn is up
mkdir /etc/iproute2
echo "201 novpn" >> /etc/iproute2/rt_tables

#Allow ssh docker access
PORT_TO_EXCLUDE=22
ip rule add fwmark 65 table novpn
ip route add default via $DEFAULT_LAN_GATEWAY_IP dev $LAN_INTERFACE_NAME table novpn
iptables -t mangle -A OUTPUT -p tcp --sport $PORT_TO_EXCLUDE -j MARK --set-mark 65

#Allow proxy docker access
PORT_TO_EXCLUDE=8888
ip rule add fwmark 65 table novpn
ip route add default via $DEFAULT_LAN_GATEWAY_IP dev $LAN_INTERFACE_NAME table novpn
iptables -t mangle -A OUTPUT -p tcp --sport $PORT_TO_EXCLUDE -j MARK --set-mark 65
