#!/bin/bash
# Script 1: System Identity Report
# Author: Rohan | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Rohan" 
SOFTWARE_CHOICE="Firefox" 

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep ^PRETTY_NAME | cut -d'"' -f2)
CURRENT_DATE=$(date '+%A, %d %B %Y, %T')
HOME_DIR=$HOME

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Kernel        : $KERNEL"
echo "Distribution  : $DISTRO"
echo "User          : $USER_NAME"
echo "Home Directory: $HOME_DIR"
echo "Uptime        : $UPTIME"
echo "Date/Time     : $CURRENT_DATE"
echo "--------------------------------"
echo "Software Choice: $SOFTWARE_CHOICE"
echo "Note: This OS is covered by the GNU General Public License (GPL)."
echo "================================"
