#! /bin/zsh

# /usr/local/Cellar/mysql/5.7.22/bin/mysqldump


now="$(date +'%d_%m_%Y_%H_%M_%S')"

filename="db_backup_$now".gz
backupfolder="../Desktop/backups"
fullpathbackupfile="$backupfolder/$filename"

logfile="$backupfolder/"backup_log_"$(date +'%Y_%m')".txt
echo "mysqldump started at $(date +'%d-%m-%Y %H:%M:%S')" >> "$logfile"

/usr/local/Cellar/mysql/5.7.22/bin/mysqldump -P 8889 --socket /Applications/MAMP/tmp/mysql/mysql.sock -u root -p happyburger > "$fullpathbackupfile"

echo "mysqldump finished at $(date +'%d-%m-%Y %H:%M:%S')" >> "$logfile"



# EXTRA 
# https://dev.mysql.com/doc/mysql-backup-excerpt/5.7/en/backup-methods.html
# https://stackoverflow.com/questions/19664893/linux-shell-script-for-database-backup