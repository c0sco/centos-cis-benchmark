#!/bin/sh
# ** AUTO GENERATED **

# 2.3.2 - Ensure rsh client is not installed (Scored)
# 2.3.2 "Ensure rsh client is not installed (Scored)" Yes Server1 Workstation1

execute(){
rpm -q rsh | grep -E "package rsh is not installed" || return $1
}
test_serial_number="2.3.2"
test_name="Ensure rsh client is not installed (Scored)"
scored="Yes"
server="Server1"
workstation="Workstation1"
important="Yes"
