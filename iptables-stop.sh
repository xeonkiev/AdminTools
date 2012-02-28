#!/bin/bash

/sbin/iptables -t filter -F
/sbin/iptables -F
/sbin/iptables -t filter -X
/sbin/iptables -X

/sbin/iptables -t filter -P INPUT ACCEPT
/sbin/iptables -t filter -P FORWARD ACCEPT
/sbin/iptables -t filter -P OUTPUT ACCEPT
/sbin/iptables -P INPUT ACCEPT
/sbin/iptables -P FORWARD ACCEPT
/sbin/iptables -P OUTPUT ACCEPT
