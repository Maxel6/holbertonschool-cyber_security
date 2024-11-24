#!/bin/bash
grep "Accepted" auth.log | awk '{print $9}' | sort | uniq | tr '\n' ',' | sed 's/,$//'