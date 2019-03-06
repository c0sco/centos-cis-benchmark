#!/bin/sh
# ** AUTO GENERATED **

# 3.2.7 - Ensure Reverse Path Filtering is enabled (Scored)

sysctl net.ipv4.conf.all.rp_filter | grep -E "net.ipv4.conf.all.rp_filter = 1"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.all.rp_filter" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.all.rp_filter = 1" || return $?
else
        grep "net.ipv4.conf.all.rp_filter" /etc/sysctl.conf | grep -E "net.ipv4.conf.all.rp_filter = 1" || return $?
fi

sysctl net.ipv4.conf.default.rp_filter | grep -E "net.ipv4.conf.default.rp_filter = 1"
if [[ $? == 0 ]]; then
        return 0
fi

if [[ $(ls -A /etc/sysctl.d/) ]] ; then
        grep "net.ipv4.conf.default.rp_filter" /etc/sysctl.conf /etc/sysctl.d/* | grep -E "net.ipv4.conf.default.rp_filter = 1" || return $?
else
        grep "net.ipv4.conf.default.rp_filter" /etc/sysctl.conf | grep -E "net.ipv4.conf.default.rp_filter = 1" || return $?
fi


