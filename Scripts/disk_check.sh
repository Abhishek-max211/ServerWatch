#!/bin/bash

echo "---------Disk Usage-----------"

disk=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Disk Usage:- $disk"

if [ $disk -gt 80 ];
then
        echo "⚠️  WARNING: Disk usage is high!"
        STATUS="⚠️  WARNING"
else
        echo "🟢 Disk usage is healthy!"
fi

