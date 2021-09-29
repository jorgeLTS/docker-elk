#!/bin/bash
ufw disable
swapoff -a
echo elasticsearch soft memlock unlimited >> /etc/security/limits.conf
echo elasticsearch hard memlock unlimited >> /etc/security/limits.conf
echo elasticsearch  -  nofile  65535 >> /etc/security/limits.conf
echo vm.max_map_count=262144 >> /etc/sysctl.conf
systemctl daemon-reload
reboot
