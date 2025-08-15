#! /bin/bash

while true; do
    echo "Hello! I'm working in Docker"


    echo "today is $(date)"


    seconds=$(date +%s -d "today 00:00:00")
    now=$(date +%s)
    uptime=$((now - seconds))

    echo "Launched: $uptime seconds from the beginning ofthe day"
    echo "-----------------------------------"
    sleep 5
done