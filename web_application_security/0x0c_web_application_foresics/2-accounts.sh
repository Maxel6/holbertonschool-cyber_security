#!/bin/bash

# Extract users with failed and accepted passwords, then find common users
common_users=$(tail -n 1000 auth.log | awk '/Failed password/ {failed[$9]} /Accepted password/ {if ($9 in failed) print $9}' | sort | uniq)
# Print users with both failed and accepted passwords
echo "$common_users"
