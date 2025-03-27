#!/bin/sh

pid=$(lsof -i tcp:$1 | awk 'NR!=1 {print $2}')
command=$(lsof -i tcp:$1 | awk 'NR!=1 {print $1}')

if [ -n "$pid" ]; then
    read -p "Kill $command process $pid? (y/n): " confirm
    if [ "$confirm" = "y" ]; then
        kill $pid
    fi
else
    echo "No process found using port $1"
fi