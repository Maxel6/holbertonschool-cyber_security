#!/bin/bash
grep "Accepted password" /var/log/auth.log | awk '{print $(NF-3)}' | sort | uniq | wc -l