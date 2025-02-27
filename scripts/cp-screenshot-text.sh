#!/bin/bash

# Take screenshot
mkdir -p ~/Pictures/gnome-screenshots
gnome-screenshot -a -f ~/Pictures/gnome-screenshots/$(date +%Y-%m-%d_%H-%M-%S).png

# Get the path to the most recent screenshot
SCREENSHOT_PATH=$(ls -t ~/Pictures/gnome-screenshots/*.png | head -n 1)

# Check if the path exists
if [ -z "$SCREENSHOT_PATH" ]; then
    echo "No screenshot found in ~/Pictures/gnome-screenshots"
    exit 1
fi

# Use absolute path to cp-image-txt.sh
# Assuming both scripts are in the same directory
cp-image-txt "$SCREENSHOT_PATH"