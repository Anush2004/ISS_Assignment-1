#!/bin/bash
word_count() {
    wc -w $1 | awk '{print $1}'
}
num=$(word_count $1)
echo "Size of File $1 has $num words . "
