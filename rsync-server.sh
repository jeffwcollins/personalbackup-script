rsync -lHEhtrvz --exclude=/dev/ --exclude=/proc/ --exclude=/tmp/ --exclude=/sys/ --exclude=/lost+found/ --no-specials --chmod=ugo=rwX root@"$servername".jeffwcollins.com:/ /storage/Misc/backup/"$servername"
echo "Server $servername RSYNC completed successfully"
read servername
export servername
./tar-server.sh
