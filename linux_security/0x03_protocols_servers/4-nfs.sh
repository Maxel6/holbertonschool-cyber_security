#!/bin/bash
showmount -e "$1" 2>/dev/null | awk '/\*/ {print $1 " (everyone)"; next} {print}'

