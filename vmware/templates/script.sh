#!/bin/bash

hostnamectl set-hostname HOSTNAME.DOMAIN

nmcli con mod ens192 ipv4.method manual ipv4.addresses IPADDRESS/NETMASK ipv4.gateway GATEWAY ipv4.dns 192.168.1.254 ipv4.dns-search 'DOMAIN schelin.org'

shutdown -t 0 now -r

exit 0

