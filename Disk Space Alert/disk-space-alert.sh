#!/bin/bash

################################################################################
# Script Name: disk-space-alert.sh
# Description: Sends an email alert if disk space usage exceeds a specified threshold.
# Author: Eyup Fidan
# Date: May 25, 2022
################################################################################

# Execute 'df -H' command to get the disk space usage information and then filter
# out lines that match the specified patterns using 'awk'. The 'NR>1' condition
# skips the first header line, while the '!/tmpfs|cdrom/' condition excludes
# lines containing 'tmpfs' or 'cdrom'.
df -H | awk 'NR>1 && !/tmpfs|cdrom/{print $5,$1}' | while read -r output; do
  # Print the output to the console for debugging purposes.
  echo "$output"
  # Extract the disk usage percentage and partition name from the output string
  # using 'awk', and assign them to 'usep' and 'partition' variables respectively.
  usep=$(echo "$output" | awk '{print $1+0}')
  partition=$(echo "$output" | awk '{print $2}')
  # Check if the disk usage percentage exceeds the threshold (90%) and send an
  # email notification to the specified email address using 'mail' command if so.
  if [ "$usep" -ge 90 ]; then
    echo "Running out of space \"$partition ($usep%)\" on $(hostname) as on $(date)"
    mail -s "Alert: Almost out of disk space $usep%" eyupfidanweb@gmail.com
  fi
done
