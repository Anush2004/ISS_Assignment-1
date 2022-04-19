#!/bin/bash
while IFS= read -r line; do
    IFS='~'
    read -a strarr <<<"$line"
    if [[ $line == *"~"* ]]; then
        echo "${strarr[1]}" once said, \"$(echo ${strarr[0]} | awk '{$1=$1};1')\"
    else
        echo "$strarr"
    fi
done <quotes.txt >speech.txt
