ssh -t root@server210-3.jeffwcollins.com "apt-get update && apt-get upgrade -y"
sleep 15s
ssh -t root@server210-3.jeffwcollins.com "apt-get autoremove"
sleep 15s
ssh -t root@server210-3.jeffwcollins.com bash "apt-get autoclean"
