
read -r -p "Would you like to backup all Servers [y/N] " response

if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]

then

echo -n "Backing up ALL Servers"
ssh root@192.138.32.80 "yum update -y --skip-broken && exit" && ssh root@192.138.32.81 "yum update -y --skip-broken && exit" && ssh root@192.138.32.82 "yum update -y --skip-broken && exit" && ssh root@192.138.32.83 "yum update -y --skip-broken && exit" && ssh root@192.138.32.84 "yum update -y --skip-broken && exit" && ssh root@192.138.32.85 "yum update -y --skip-broken && exit" && ssh root@192.138.32.86 "yum update -y --skip-broken && exit" && ssh root@192.138.32.87 "yum update -y --skip-broken && exit" && ssh root@192.138.32.89 "yum update -y --skip-broken && exit" && ssh root@192.138.32.95 "yum update -y --skip-broken && exit"

elif [[ "$response" =~ ^([nN])+$ ]]

then

echo -n "Enter the Server name that you would like to update and press [ENTER]: "
read servername
echo "Now preparing $servername for backup, please wait"
export servername
./prep.sh
#echo "Server $servername Cleanup completed successfully"
#./rsync-server.sh
#echo "Server $servername RSYNC completed successfully"
#./tar-server.sh
#echo "Server $servername Backup archived successfully"
#./cleanup.sh
#echo "Server $servername backup files removed successfully"
else

    exit

fi
