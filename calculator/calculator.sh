#!/bin/bash

echo "Enter numbers"

read -p "Enter first number: " num1
read -p "Enter second number: " num2

read -p "Enter arithmetic opeartion to be performed. Sum or Diff or Multiple or Division or Mod: " operator

case $operator in
  "Sum")
  result=$(( num1 + num2 ))
  ;;
  "Diff")
  result=$(( num1 - num2 ))
  ;;  
  "Multiple")
  result=$(( num1 * num2 ))
  ;;
  "Divide")
  result=$(( num1 / num2 ))
  ;;
  "Mod")
  result=$(( num1 % num2 ))
  ;;
 *) 
  echo "Invalid operation"
  exit 1
  ;;
esac    

echo "The result is: $result"