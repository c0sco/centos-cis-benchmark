#!/bin/sh
# ** AUTO GENERATED **

# 2.2.10 - Ensure HTTP server is not enabled (Scored)
#2.2.10 "Ensure HTTP server is not enabled (Scored)" Yes Server1 Workstation1

execute(){
systemctl is-enabled httpd 2>&1 | grep -E "(disabled|No such file or directory)" || return $?
}
test_serial_number="2.2.10"
test_name="Ensure HTTP server is not enabled (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
