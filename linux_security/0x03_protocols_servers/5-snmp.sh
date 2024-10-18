#!/bin/bash
grep -E "com2sec|rocommunity" /etc/snmp/snmpd.conf | grep -i public
