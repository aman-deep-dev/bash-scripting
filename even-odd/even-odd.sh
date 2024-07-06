#!/bin/bash

echo "Printing even numbers"
for (( i=1; i<=20 ; i++))
do
 if [[ $i%2 -eq 0 ]]; then
   echo $i
 fi  
done
echo 
echo "Printing odd numbers"
for (( i=1; i<=20 ; i++))
do
 if [[ $i%2 -ne 0 ]]; then
   echo $i
 fi  
done