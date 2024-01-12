#!/bin/bash

echo "User: $(whoami)"

echo "Today is $(date | awk '{print $1 "/" $2 "/" $3}')"

echo "Time is $(date | awk '{print $4}')"

echo "*******************************************"
echo " "

echo "Server uptime: $(uptime | awk '{print $3}')"
echo "Last login: $(last -a | xargs | awk '{print $1}')"
echo "Last user IP address: $(last | head -1 | awk '{print $3}')"

echo "*******************************************"
echo " "

echo "Server Disk Details"
echo "------------------------"
disk_space=$(df -h | xargs | awk '{print $9}')
free_disk_space=$(df -h | xargs | awk '{print $11}')
echo "Total Disk space: $disk_space "
echo "Free Disk space: $free_disk_space"
echo "*******************************************"
echo " "

echo "Server RAM Details"
echo "----------------------"
ram_size=$(free -h | xargs | awk '{print $8}')
ram_free=$(free -h | xargs | awk '{print $10}')
echo "Memory Size: $ram_size"
echo "Free Memory: $ram_free"