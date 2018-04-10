ssh -t root@"$servername".jeffwcollins.com "apt-get update && apt-get upgrade -y && apt-get autoremove && apt-get clean && apt-get autoclean"
echo "Server $servername cleaned completed Successfully"
read servername
export servername
./rsync-server.sh
