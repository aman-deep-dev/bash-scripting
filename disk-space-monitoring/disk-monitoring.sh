#!/bin/bash

# disk_available=$(df -h | awk 'NR==2 {print $4}' | sed "s/G//g")

disk_threshold=10
disk_usage=$(df -h | awk 'NR==2 {print $3}' | sed "s/G//g")

if [[ $disk_usage -gt $disk_threshold ]]; then
  echo "Disk usage is greater than" $disk_threshold
else
  echo "Disk usage is less than" $disk_threshold
fi  