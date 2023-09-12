# backup-script

This is a simple shell script for creating backups of specified files and directories. It uses the tar utility to compress and archive the specified files into a backup directory. 

# Usage

1-Ensure that you have the superuser privileges to create directories and write to the backup location.

2-Modify the script to specify the files and directories you want to back up by setting the "backup_files" variable. You can add or remove files and directories as needed.

3-Run the script by executing it in your terminal

   sudo ./backup.sh

# Important note

It's recommended to schedule this script to run periodically using tools like cron to automate your backups.
