#!/bin/sh
# ** AUTO GENERATED **

# 3.2.5 - Ensure broadcast ICMP requests are ignored (Scored)
#3.2.5 "Ensure broadcast ICMP requests are ignored (Scored)" Yes Server1 Workstation1

execute(){
sysctl net.ipv4.icmp_echo_ignore_broadcasts | grep -E "net.ipv4.icmp_echo_ignore_broadcasts = 1"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.icmp_echo_ignore_broadcasts" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.icmp_echo_ignore_broadcasts = 1" || return $?
else
        grep "net.ipv4.icmp_echo_ignore_broadcasts" /etc/sysctl.conf | grep -E "net.ipv4.icmp_echo_ignore_broadcasts = 1" || return $?
fi
}
test_serial_number="3.2.5"
test_name="Ensure broadcast ICMP requests are ignored (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
