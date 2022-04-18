#!/bin/bash
read -p "Enter string:" str
    len=${#str}
for((i=$len-1;i>=0;i--))
    do
	reverse=$reverse${str:$i:1}
   done
	echo "The reverse string is:"
	echo  "$reverse"

     echo "The reverse string with one alphabet next is:" 
     echo "$reverse" | tr a-z b-za |tr A-Z B-ZA
for((i=$len/2-1;i>=0;i--))
    do
        reverse1=$reverse1${str:$i:1}
   done
for((i=$len/2;i<$len;i++))
    do
        reverse1=$reverse1${str:$i:1}
    done
        echo "The reverse half string  is:"
	echo "$reverse1"
