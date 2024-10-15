#!/bin/bash

# Check if /usr/local/bin is writable
if [ ! -w /usr/local/bin ]; then
  echo "You need to run this script with sudo or as root."
  exit 1
fi

# Create sg_m script
cat << 'EOF' > /usr/local/bin/sg_m
#!/bin/bash
# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Please enter a number"
  exit 1
fi

# Perform the division by 480
result=$(echo "$1 / 480" | bc -l)

# Output the result
echo "$result"
EOF

# Make sg_m executable
chmod +x /usr/local/bin/sg_m

# Create sg_h script
cat << 'EOF' > /usr/local/bin/sg_h
#!/bin/bash
# Check if an argument is provided
if [ -z "$1" ]; then
  echo "Please enter a number"
  exit 1
fi

# Perform the division by 8
result=$(echo "$1 / 8" | bc -l)

# Output the result
echo "$result"
EOF

# Make sg_h executable
chmod +x /usr/local/bin/sg_h

echo "Installation complete! You can now use 'sg_m' and 'sg_h' as commands."