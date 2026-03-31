#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh [logfile] [keyword]
# Author: Rohan | Units 2 & 5

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error'
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
 echo "Error: File $LOGFILE not found."
 echo "Usage: ./script4.sh filename.log keyword"
 exit 1
fi

# Check if file is empty and wait (do-while style)
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Waiting for data... (Ctrl+C to stop)"
    sleep 2
done

# Read file line by line
while IFS= read -r LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
    COUNT=$((COUNT + 1))
 fi
done < "$LOGFILE"

echo "--------------------------------"
echo "REPORT FOR: $LOGFILE"
echo "KEYWORD   : '$KEYWORD'"
echo "FOUND     : $COUNT times"
echo "--------------------------------"
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "--------------------------------"
