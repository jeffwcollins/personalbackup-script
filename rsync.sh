rsync -lHhtrvz --exclude=/dev/ --exclude=/proc/ --exclude=/tmp/ --exclude=/sys/ --exclude=/lost+found/ --no-specials --chmod=ugo=rwX root@server210-3.jeffwcollins.com:/ /storage/Misc/backup/server210-3vm
