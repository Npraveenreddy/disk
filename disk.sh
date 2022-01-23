#!/bin/bash
THRESHOLD1=60
THRESHOLD1=90

EMAIL=narayana.praveen143@gmail.com

#PART=yourdiskpart

PART=/boot
USE=`df -h |grep $PART | awk '{ print $5 }' | cut -d'%' -f1`

if [ $USE -gt $THRESHOLD1 ]; then
  echo "60% Percent Used: $USE" | mail -s "Disk Usage Rate " -r narayana.praveen143@gmail.com $EMAIL
elif [ $USE -gt $THRESHOLD2 ]; then
  echo "60% Percent Used: $USE" | mail -s "Disk Usage Rate " -r narayana.praveen143@gmail.com $EMAIL
  
fi
