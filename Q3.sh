#!/bin/bash
byte_count() {
    wc -c $1 | awk '{print $1}'
}

num=$(byte_count $1)

echo "Size of File $1 is $num bytes . "

line_count() {
    wc -l $1 | awk '{print $1}'
}

num=$(line_count $1)

echo "File $1 has $num lines . "
word_count() {
    wc -w $1 | awk '{print $1}'
}

num=$(word_count $1)

echo "Size of File $1 has $num words . "

count=0
while IFS= read -r line; do
    ((count++))
    echo "Line No:<$count> -  Word Count:`wc -w <<< $line`"
done < $1

# 3e
tr ' ' '\n' < $1 |grep -wo "[[:alpha:]]\+"|sort| uniq -c |sort -nr | while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "word : <${name}> Count of repetition:[${count}]"
        fi
done