#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Rohan | Course: Open Source Software

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "      DIRECTORY AUDIT REPORT"
echo "========================================"
echo "Checking system-wide directories..."
echo "----------------------------------------"

# For loop to iterate through each directory
for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
    # Extract Permissions, Owner, and Group using awk
    PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
    # Extract Size using du and cut
    SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
    echo "Directory: $DIR"
    echo "  >> Permissions/Owner: $PERMS"
    echo "  >> Disk Usage: $SIZE"
 else
    echo "ALERT: $DIR does not exist on this system"
 fi
done

echo "----------------------------------------"
echo "CHECKING FIREFOX CONFIGURATION DIRECTORY"
echo "----------------------------------------"
# Targeted audit of the Firefox profile directory
FF_DIR="$HOME/.mozilla/firefox"

if [ -d "$FF_DIR" ]; then
    FF_PERMS=$(ls -ld $FF_DIR | awk '{print $1, $3, $4}')
    echo "Firefox Config Path: $FF_DIR"
    echo "Permissions/Owner  : $FF_PERMS"
    echo "Status: Config directory exists and is secured."
else
    echo "ALERT: Firefox config directory (~/.mozilla/firefox) not found."
fi
echo "========================================"
