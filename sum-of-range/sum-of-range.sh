#!/bin/bash
for (( i=1; i<=10; i++))
do
 if [[ $i%2 -eq 0 ]]; then
   sum=$(( sum + i ))
 fi  
done
echo Sum: $sum 