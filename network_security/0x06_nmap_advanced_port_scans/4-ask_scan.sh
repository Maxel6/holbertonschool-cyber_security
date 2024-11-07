#!/bin/bash
sudo nmap -Pn -sA -p "$2" --host-timeout 1000ms --reason "$1"
