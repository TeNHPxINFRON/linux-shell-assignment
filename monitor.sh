#!/bin/bash
# Script Name: monitor.sh
# Purpose: Log CPU and memory usage every 5 seconds.
# Author: Harsh
# Date: $(date +%Y-%m-%d)

LOGFILE="$HOME/system_log.txt"

while true
do
    echo "----- $(date) -----" >> "$LOGFILE"
    echo "CPU Usage:" >> "$LOGFILE"
    top -bn1 | grep "Cpu(s)" >> "$LOGFILE"
    echo "Memory Usage:" >> "$LOGFILE"
    free -h >> "$LOGFILE"
    echo "" >> "$LOGFILE"
    sleep 5
done
