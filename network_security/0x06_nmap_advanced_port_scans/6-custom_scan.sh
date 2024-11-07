#!/bin/bash
sudo nmap -sX --scanflags -p "$2" "$1" -oN custom_scan.txt >/dev/null