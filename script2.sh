#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rohan | Course: Open Source Software
PACKAGE="firefox" 

# Check if package is installed (Using Ubuntu's dpkg manager)
if dpkg -l $PACKAGE &>/dev/null; then
 echo "SUCCESS: $PACKAGE is installed on this Linux system."
 echo "--------------------------------"
 # Display version and description info
 dpkg -s $PACKAGE | grep -E 'Package|Version|Status|Description'
else
 echo "ALERT: $PACKAGE is NOT installed."
fi

echo "--------------------------------"
echo "--- Philosophy Note ---"
# Case statement to print philosophy based on package name
case $PACKAGE in
 httpd|apache2) echo "Apache: The web server that built the open internet." ;;
 mysql|mariadb) echo "MySQL: Open source at the heart of millions of apps." ;;
 firefox) echo "Firefox: A nonprofit fighting for a healthy, open web." ;;
 vlc) echo "VLC: Built by students, proving community code can play anything." ;;
 git) echo "Git: The tool Linus built when proprietary software failed him." ;;
 *) echo "Open Source: Standing on the shoulders of giants." ;;
esac
echo "--------------------------------"
