#!/bin/sh

# Print-green function
print_green(){
	GREEN="\033[0;32m"
	NC="\033[0m"
	echo  "${GREEN} $1 ${NC}"
}

# Print-red function
print_red(){
	RED="\033[0;31m"
	NC="\033[0m"
	echo  "${RED} $1 ${NC}"
}

# Check for root/superuser privileges
if [ "$(id -u)" -ne 0 ]
then
	print_red "This script requires superuser privileges. Please run it as root or with sudo."
	exit
fi

# Create the directory where backups will be stored
if [ -d /backup ]
then
	continue
else
	print_green "/backup directory has been created"
	mkdir /backup
fi

# What to backup.
backup_files="/share1"

# where to store the backup.
backup_store="/backup"

# Name of archive file.
day=`date +%F`
hostname=`hostname`
archive_file="$hostname-$day.tar.gzip"

# Start status message.
print_green "Backing up $backup_files to $backup_store/$archive_file"

# Backup the files using tar.
tar czpf $backup_store/$archive_file $backup_files

# End status message 
print_green "Backup finished"
