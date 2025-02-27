# Bash Scripts Collection

A collection of useful bash scripts for various automation tasks.

## Scripts

### ✅ cp-image-txt.sh

Extract text from images and copy to clipboard.

**Dependencies:**
- `tesseract-ocr` - for text recognition
- `xclip` - for X11 clipboard support
- `wl-copy` - for Wayland clipboard support

**Usage:**
```bash
./scripts/cp-image-txt.sh <path_to_image>
```

**Example:**
```bash
./scripts/cp-image-txt.sh screenshot.png
```

## Installation

1. Ensure you have required dependencies:
```bash
sudo apt install tesseract-ocr xclip wl-clipboard
```

2. Make scripts executable:
```bash
chmod +x *.sh
```
