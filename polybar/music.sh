#!/bin/bash

status=$(playerctl status 2>/dev/null)
if [ "$status" = "Playing" ]; then
    echo "$(playerctl metadata --format '{{ artist }} - {{ title }}')"
elif [ "$status" = "Paused" ]; then
    echo "$(playerctl metadata --format '{{ artist }} - {{ title }}')"
else
    echo ""
fi

