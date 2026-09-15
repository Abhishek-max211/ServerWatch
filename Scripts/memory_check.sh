#!/bin/bash

echo "---------Memory Usage---------"

memory=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

echo "Memory Usage: $memory%"

if [ "$memory" -gt 80 ]; then
    echo "⚠️  WARNING: Memory usage is high!"
    STATUS="⚠️  WARNING"
else
    echo "🟢 Memory Usage is healthy!"
fi

