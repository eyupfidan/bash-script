#!/bin/bash
####################################
# Author Name: Eyup Fidan

# Backup system first homework.

####################################

# load conf file 
source /config/createbackup.conf

# What to backup. (Only Home Folder)

#backup_files="/home " ** using conf environment **

# Where to backup to.

#dest="/mnt" ** using conf environment 

# Create archive filename.
username=$(whoami)
longdate=$(date +%d%m%Y)
shortdate=$(date +%H%M)
archive_file="$username-$longdate-$shortdate.tgz"

# Print start status message.
echo "Backing up ${BACKUPFILES} to ${DEST}/$archive_file"
date
echo

# Backup the files using tar.
tar czf ${DEST}/$archive_file ${BACKUPFILES}

#Create MD5 Sum
#sumfile= $(md5sum $archive_file)

echo $(md5sum $archive_file)
# Create Md5 txt file.
touch /mnt/$archive_file.md5.txt
echo $(md5sum ${DEST}/$archive_file) > ${DEST}/$archive_file.md5.txt

#Create log file.
touch /tmp/createbackupscript$shortdate.log
# Print end status message.
echo
echo "Backup finished"
date
echo