#!/bin/bash

# Server Report Script
# Topic 1.5 Mini-Project - Shell Scripting
# Author : Michael Joshua

NAME="Michael Joshua"
DATE=$(date)
LOCATION=$(PWD)
DISK=$(df -h / |tail -1 | awk '{print $4}')

echo "================================="
echo "   SERVER REPORT  "
echo "================================="
echo "Engineer : $NAME"
echo "Date/Time: $DATE"
echo "Location : $LOCATION"
echo "Disk Free: $DISK"
echo "================================="
echo "Report complete. Stay sharp."
echo "================================="

