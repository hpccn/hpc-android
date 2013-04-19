#!/bin/sh
sudo tunctl -t tap0 -u hpc
sudo ifconfig tap0 192.169.0.1 netmask 255.255.255.0 up
sudo echo 1 > /proc/sys/net/ipv4/ip_forward
sudo iptables -t nat -A POSTROUTING -j MASQUERADE
#sudo route add -net 192.169.0.0 netmask 255.255.255.0 gw 192.168.4.1
#sudo route add -net 192.169.0.0 netmask 255.255.255.0 gw 192.168.6.1

#/mnt/bak/kvm/kvmxp.sh

