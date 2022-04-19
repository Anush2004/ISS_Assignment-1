#!/bin/bash

#Q1-a-remove empty lines 
awk '!/^$/' quotes.txt

#Q1-b-remove duliplicates
sort quotes.txt | uniq -u
