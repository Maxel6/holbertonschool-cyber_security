#!/bin/bash
awk -v ip="$2" '$1 == ip {print $7}' $1 | sort | uniq -c | sort -rn | awk '{print $2,$1}'