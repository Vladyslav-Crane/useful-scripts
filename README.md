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

### ✅ cp-screenshot-text.sh

Take a screenshot of a selected area and automatically extract text to clipboard.

**Dependencies:**
- `gnome-screenshot` - for taking screenshots
- All dependencies from `cp-image-txt.sh`

**Usage:**
```bash
./scripts/cp-screenshot-text.sh
```

## Installation

1. Ensure you have required dependencies:
```bash
sudo apt install tesseract-ocr xclip wl-clipboard gnome-screenshot
```

2. Make scripts executable:
```bash
chmod +x scripts/*.sh
```
3. Optional. Add scripts to ~/bin
   
   - Make sure ~/bin exists
   ```bash
      mkdir -p ~/bin
   ```
   - Update path
   ```bash
     if [ -d "$HOME/bin" ] ; then
          PATH="$HOME/bin:$PATH"
     fi
   ```
   - Copy scripts to ~/bin
## Set script as a shortcut:
#### Ubuntu 24.04:
- Open Keyboard Shortcuts Settings (Press Super → Type "Keyboard Shortcuts"):
- Select "View and Customize Shortcuts" → Press "+"
- Set name of the shortcut, script path and set shortcut.

