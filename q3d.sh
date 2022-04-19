#!/bin/bash
count=0
while IFS= read -r line; do
    ((count++))
    echo "Line No:<$count> -  Word Count:`wc -w <<< $line`"
done < $1
