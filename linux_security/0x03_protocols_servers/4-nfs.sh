#!/bin/bash
showmount -e "$1" | grep -E '^\S+\s+\*' | awk '{print $1 " (everyone)"}'
showmount -e "$1" | grep -v '*'
