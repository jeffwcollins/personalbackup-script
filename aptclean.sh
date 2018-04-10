ssh -t root@server210-3.jeffwcollins.com 'apt-get update'
sleep 15s
ssh -t root@server210-3.jeffwcollins.com 'apt-get upgrade -y'
sleep 60s
ssh -t root@server210-3.jeffwcollins.com 'apt-get clean'
