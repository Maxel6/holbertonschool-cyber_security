#!/bin/bash
pass="$1"

# Remove "{xor}" from input
pass="${pass#'{xor}'}"

#Translate input from original base64
text_pass=$(echo "$pass" | base64 -d)

decoded_pass=""
for ((i = 0; i < ${#text_pass}; i++)); do
	#Take the first character from the text password
    char="${text_pass:$i:1}"
	#Transforms the character to ASCII
    ascii_value=$(printf "%d" "'$char")
	#Calculates the XOR operation between the ASCII character and the key
    ascii_result=$(( ascii_value ^ 95 ))
	#Adds the decoded character to the decoded string
    decoded_pass+="$(printf "$(printf '\\x%x' $ascii_result)")"
done

echo -e "$decoded_pass"