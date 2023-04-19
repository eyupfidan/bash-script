#!/bin/bash

################################################################################
# Script Name: createbackup.sh
# Description: Backup script for backing up specified files to a specified
#              destination directory and calculating the MD5 checksum of the
#              archive file.
# Author: Eyup Fidan
# Date: May 25, 2022
################################################################################

# Load configuration file.
source /config/createbackup.conf

# Create archive filename.
username=$(whoami)
longdate=$(date +%d%m%Y)
shortdate=$(date +%H%M)
archive_file="$username-$longdate-$shortdate.tgz"

# Print start status message.
echo "Backing up ${BACKUPFILES} to ${DEST}/${archive_file}"
date
echo

# Backup the files using tar.
tar czf "${DEST}/${archive_file}" "${BACKUPFILES}"

# Calculate and print the MD5 checksum of the archive file.
md5sum "${DEST}/${archive_file}"

# Create MD5 checksum file.
md5sum "${DEST}/${archive_file}" > "${DEST}/${archive_file}.md5.txt"

# Create log file.
touch "/tmp/createbackupscript${shortdate}.log"

# Print end status message.
echo
echo "Backup finished"
date
echo
