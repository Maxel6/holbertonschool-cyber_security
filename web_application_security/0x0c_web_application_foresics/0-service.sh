#!/bin/bash
grep -E "sshd|ftp|http" auth.log | awk '{for (i=1; i<=NF; i++) if ($i ~ /(sshd|ftp|http)/) print $i}' | sed 's/\[.*\]//g' | sort | uniq -c | sort -nr
