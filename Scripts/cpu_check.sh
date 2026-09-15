#!/bin/bash

# CPU Usage Monitoring

cpu=$(top -bn1 | awk '/Cpu/ {print 100 -$8}')
cpu_int=${cpu%.*}

echo ""
echo "---------CPU Usage------------"
echo "CPU Usage:- $cpu%"

if [ "$cpu_int" -gt 80 ];
then
        echo "⚠️  WARNING: CPU usage is high!"
        STATUS="⚠️  WARNING"
else
        echo "🟢 OK: CPU usage is normal."
fi

