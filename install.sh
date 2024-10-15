#!/bin/bash

# Check if /usr/local/bin is writable
if [ ! -w /usr/local/bin ]; then
  echo "You need to run this script with sudo or as root."
  exit 1
fi

# Create sg_m script (divides by 480)
cat << 'EOF' > /usr/local/bin/sg_m
#!/bin/bash
# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Please enter a number"
  exit 1
fi

# Perform the division by 480 and round to 3 decimal places
result=$(echo "scale=3; $1 / 480" | bc)

# Detect the system clipboard command
copy_to_clipboard() {
  if command -v pbcopy &> /dev/null; then
    echo "$result" | pbcopy
  elif command -v xclip &> /dev/null; then
    echo "$result" | xclip -selection clipboard
  elif command -v xsel &> /dev/null; then
    echo "$result" | xsel --clipboard --input
  elif command -v wl-copy &> /dev/null; then
    echo "$result" | wl-copy
  else
    echo "No clipboard tool found. Please install pbcopy (macOS), xclip/xsel (Linux X11), or wl-copy (Wayland)."
    exit 1
  fi
}

# Copy the result to the clipboard
copy_to_clipboard

# Output the result (only the number)
echo "$result"
EOF

# Make sg_m executable
chmod +x /usr/local/bin/sg_m

# Create sg_h script (divides by 8)
cat << 'EOF' > /usr/local/bin/sg_h
#!/bin/bash
# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Please enter a number"
  exit 1
fi

# Perform the division by 8 and round to 3 decimal places
result=$(echo "scale=3; $1 / 8" | bc)

# Detect the system clipboard command
copy_to_clipboard() {
  if command -v pbcopy &> /dev/null; then
    echo "$result" | pbcopy
  elif command -v xclip &> /dev/null; then
    echo "$result" | xclip -selection clipboard
  elif command -v xsel &> /dev/null; then
    echo "$result" | xsel --clipboard --input
  elif command -v wl-copy &> /dev/null; then
    echo "$result" | wl-copy
  else
    echo "No clipboard tool found. Please install pbcopy (macOS), xclip/xsel (Linux X11), or wl-copy (Wayland)."
    exit 1
  fi
}

# Copy the result to the clipboard
copy_to_clipboard

# Output the result (only the number)
echo "$result"
EOF

# Make sg_h executable
chmod +x /usr/local/bin/sg_h

echo "Installation complete! You can now use 'sg_m' and 'sg_h' as commands."