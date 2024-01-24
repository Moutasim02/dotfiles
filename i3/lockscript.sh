#!/bin/bash

# Define paths
screenshot_path="/home/moutasim/Pictures/lockpic/screenshot.png"
blurred_screenshot_path="/home/moutasim/Pictures/lockpic/blurred_screenshot.png"

# Take a screenshot
scrot "$screenshot_path"

# Add blur to the screenshot
convert "$screenshot_path" -blur 0x5 "$blurred_screenshot_path"

# Get current date
current_date=$(date +"%A, %B %d, %Y")

# Add date and greeting to the center of the image
convert "$blurred_screenshot_path" -gravity center -pointsize 40 -fill white -annotate 0 "Hi Moutasim,\n$current_date" "$blurred_screenshot_path"

# Lock screen with the modified image
i3lock --image="$blurred_screenshot_path"

# Remove temporary files
rm "$screenshot_path" "$blurred_screenshot_path"

