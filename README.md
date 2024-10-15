# Worktime Calculator - Bash & Zsh Commands

This repository provides two simple Bash commands to help you calculate worktime:

- **`sg_m`**: Divides a number by 480 (e.g., for minutes in a workday), rounded to 3 decimal places.
- **`sg_h`**: Divides a number by 8 (e.g., for hours in a workday), rounded to 3 decimal places.

Both commands also copy the result to your clipboard, so you can easily paste it elsewhere.

## Installation

You can easily install these commands by running the provided `install.sh` script.

### Steps

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/worktime-calculator.git
   cd worktime-calculator
   ```

2. Run the install script with sudo:

   ```bash
   sudo ./install.sh
   ```

3. After installation, you can use the sg_m and sg_h commands in your terminal.

### Verifying Installation

After running the install script, you should be able to use the commands as follows:

- sg_m (Dividing a number by 480):

   ```bash
   sg_m 19
   0.040
   ```

The result is also copied to your clipboard.

- sg_h (Dividing a number by 8):

   ```bash
   sg_h 19
   2.375
   ```

**The result is also copied to your clipboard.**

## Uninstallation

If you ever want to remove the commands, simply run the uninstall.sh script:

   ```bash
   sudo ./uninstall.sh
   ```

Alternatively, you can manually delete the files from /usr/local/bin:

   ```bash
   sudo rm /usr/local/bin/sg_m /usr/local/bin/sg_h
   ```

## Clipboard Functionality

The script automatically copies the result to your clipboard using one of the following tools, depending on your system:

- macOS: pbcopy
- Linux (X11): xclip or xsel
- Wayland (Linux): wl-copy

If none of these tools are available on your system, you will be prompted to install them.

## Purpose

These simple commands are designed to quickly calculate fractions of your workday based on either minutes or hours. For example, you can calculate how many portions of an 8-hour or 480-minute day you have worked based on a given number.

##Compatibility

This script is compatible with both Bash and Zsh on Unix-based systems.

### Key Fixes:

- Corrected indentation and block formatting for code and terminal commands.
- Fixed headings and lists for proper Markdown rendering.
- Adjusted output example formatting for clarity.

This README should now render correctly on GitHub and provide clear instructions for users.