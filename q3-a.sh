#!/bin/bash
byte_count() {
    wc -c $1 | awk '{print $1}'
}
num=$(byte_count $1)
echo "Size of File $1 is $num bytes . "
