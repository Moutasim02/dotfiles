#!/bin/bash

# Internal screen
internal_screen=$(xrandr --query | awk '/ connected/ && !/ disconnected/ && !/primary/ {print $1; exit}')

# External screen (excluding the internal screen)
external_screen=$(xrandr --query | awk '/ connected/ && !/primary/ && $1 != "'"$internal_screen"'" {print $1; exit}')

# Check if the external screen is connected
if [ -n "$external_screen" ]; then
    xrandr --output "$internal_screen" --off --output "$external_screen" --primary --auto
else
    xrandr --output "$internal_screen" --primary --auto
fi
