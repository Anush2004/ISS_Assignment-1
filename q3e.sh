#!/bin/bash

tr ' ' '\n' < $1 |grep -wo "[[:alpha:]]\+"|sort| uniq -c |sort -nr | while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "word : <${name}> Count of repetition:[${count}]"
        fi
done
