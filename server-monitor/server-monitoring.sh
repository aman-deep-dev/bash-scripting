#!/bin/bash

mem_threshold=11000
cpu_threshold=60

while true; 
do
  mem_usage=$(( $(free -m | awk 'NR==2 {print $2}') - $(free -m | awk 'NR==2 {print $7}') ))
  cpu_usage=$(( 100 - $(top -bn1 | grep 'Cpu(s)' | awk '{print $8}' | cut -d '.' -f 1 ) ))
  if [ $mem_usage -gt $mem_threshold ]; then
    echo Memory usage is higher than threshold : $mem_usage
  else
    echo Memory usage is lower than threshold : $mem_usage
  fi

  if [ $cpu_usage -gt $cpu_threshold ]; then
    echo CPU usage is higher than threshold : $cpu_usage
  else 
    echo CPU usage is lower than threshold : $cpu_usage
  fi
  sleep 5
done
