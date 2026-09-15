#!/bin/bash

echo "--------Service Monitoring--------"

read -p "Enter the Service name that you want to check:- " service

if systemctl is-active --quiet $service
then
    echo "🟢 $service Service: RUNNING"
else
    echo "🔴 $service Service: DOWN"
    STATUS="⚠️  WARNING"
fi

