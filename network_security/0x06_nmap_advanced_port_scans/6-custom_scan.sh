#!/bin/bash
sudo nmap -sX --scanflags -p "$2" "$1" > custom_scan.txt 2>&1