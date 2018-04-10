#!/bin/sh
LIST=`mktemp`
#
find /storage/Misc/backup/"$servername" -type s -print >> $LIST
#
env GZIP=-9 tar -czf "/storage/Misc/backup/archived/"$servername"$(date '+%d%m%y%').tar.gz" -X $LIST --exclude=/proc --exclude=/lost+found --exclude=/tmp --exclude=/sys --exclude=/mnt /storage/Misc/backup/"$servername/
#
rm $LIST
#
rm -r /storage/Misc/backup/"$servername"
#
echo "Server $servername Backup archived successfully"
read servername
export servername
./cleanup.sh
