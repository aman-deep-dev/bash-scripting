#!/bin/bash

logfile=/home/amandeep/shell-scripting/bash-scripting/log-rotate/logs/accesslogs.txt
archivedir=/home/amandeep/shell-scripting/bash-scripting/log-rotate/log-archive
maxsize=$1  #max size in bytes (1 mb)

# Check if maxsize argument is provided
if [ -z "$maxsize" ]; then
  echo "Error: Missing maxsize argument."
  exit 1
fi


logsize=$(stat -c%s "$logfile")
echo "size of logfile" $logsize
if [ $logsize -ge $maxsize ]
then
  echo "Log file is larger than maxsize"
  mv $logfile $archivedir
  echo "Log file has been rotated"
  echo "Creating new log file"
  touch $logfile
else
  echo "Log file is smaller than maxsize"
fi




