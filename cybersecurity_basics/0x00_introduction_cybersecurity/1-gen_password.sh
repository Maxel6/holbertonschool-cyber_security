#!/bin/bash
length=$1
head /dev/urandom | tr -dc '[:alnum:]' | head -c "$length"