#!/bin/bash

FILE="mon.txt"

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
MEM=$(free -m | awk '/Mem:/ {printf "%.2f", $3/$2*100}')
DISK=$(df -h / | awk 'NR==2 {print $5}')
LOAD=$(uptime | awk -F'load average:' '{print $2}')

echo "$TIMESTAMP  | RAM: ${MEM}% | Disk: ${DISK} | Load:${LOAD}" >> "$FILE"
