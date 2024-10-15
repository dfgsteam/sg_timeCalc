#!/bin/bash

# Check if /usr/local/bin is writable
if [ ! -w /usr/local/bin ]; then
  echo "You need to run this script with sudo or as root."
  exit 1
fi

# Remove sg_m and sg_h from /usr/local/bin
if [ -f /usr/local/bin/sg_m ]; then
  rm /usr/local/bin/sg_m
  echo "Removed sg_m command."
else
  echo "sg_m command not found."
fi

if [ -f /usr/local/bin/sg_h ]; then
  rm /usr/local/bin/sg_h
  echo "Removed sg_h command."
else
  echo "sg_h command not found."
fi

echo "Uninstallation complete."