#!/bin/bash
read -p "Enter numbers seperated by commas: " string

array=($(echo $string | tr "," "\n"))
#echo ${array[*]}

for(( i=0 ; i<${#array[@]} ; i++ ))
do
    for(( j=i ; j<${#array[@]} ; j++ ))
    do
        if [[ ${array[i]} -gt ${array[j]} ]];
        then
            # swap
                temp="${array[j]}"
                array[j]="${array[i]}"
                array[i]="$temp"
        fi
    done
done
echo "Array in sorted order :"
for each in "${array[@]}"
do
  echo "$each"
done
