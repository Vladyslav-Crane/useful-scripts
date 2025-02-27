#!/bin/bash

# Check if Tesseract is installed
if ! command -v tesseract &> /dev/null; then
    echo "Tesseract is not installed. Install it with: sudo apt install tesseract-ocr"
    exit 1
fi

# Check if image path is provided as argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <path_to_image>"
    exit 1
fi

# Detect environment (X11 or Wayland)
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    CLIPBOARD_CMD="wl-copy"
else
    CLIPBOARD_CMD="xclip -selection clipboard"
fi

# Use Tesseract for text recognition and copy to clipboard without creating files
tesseract $1 - -l eng 2>/dev/null | $CLIPBOARD_CMD

# Check if operation was successful
if [ $? -eq 0 ]; then
    echo "Text successfully extracted and copied to clipboard."
else
    echo "Error processing image or copying to clipboard."
    exit 1
fi
