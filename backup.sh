
read -r -p "Would you like to backup all Servers [y/N] " response

if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]

then

echo -n "Backing up ALL Servers"
ssh root@192.138.32.80 "yum update -y --skip-broken && exit" && ssh root@192.138.32.81 "yum update -y --skip-broken && exit" && ssh root@192.138.32.82 "yum update -y --skip-broken && exit" && ssh root@192.138.32.83 "yum update -y --skip-broken && exit" && ssh root@192.138.32.84 "yum update -y --skip-broken && exit" && ssh root@192.138.32.85 "yum update -y --skip-broken && exit" && ssh root@192.138.32.86 "yum update -y --skip-broken && exit" && ssh root@192.138.32.87 "yum update -y --skip-broken && exit" && ssh root@192.138.32.89 "yum update -y --skip-broken && exit" && ssh root@192.138.32.95 "yum update -y --skip-broken && exit"

elif [[ "$response" =~ ^([nN])+$ ]]

then

echo -n "Enter the Server name that you would like to update and press [ENTER]: "
read servername
echo "Now Backing up $servername, please wait"
ssh root@"$servername".jeffwcollins.com "yum update -y --skip-broken && exit"
echo "Server $servername backup completed Successfully"

else

    exit

fi
