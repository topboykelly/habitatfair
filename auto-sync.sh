#!/bin/bash
while true
do
    git add .
    if ! git diff --cached --quiet; then
        git commit -m "auto update: $(date '+%Y-%m-%d %H:%M:%S')"
        git push
    fi
    sleep 10
done
