#!/bin/sh
LIST=`mktemp`
find /storage/Misc/backup/server210-3vm -type s -print >> $LIST
env GZIP=-9 tar -czf /storage/Misc/backup/archived/server210-3vm.tar.gz -X $LIST --exclude=/proc --exclude=/lost+found --exclude=/tmp --exclude=/sys --exclude=/mnt /storage/Misc/backup/server210-3vm/
rm $LIST
