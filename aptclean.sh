ssh -t root@server210-3.jeffwcollins.com 'apt-get update'
sleep 15
ssh -t root@server210-3.jeffwcollins.com 'apt-get upgrade -y'
sleep 60
ssh -t root@server210-3.jeffwcollins.com 'apt-get clean'
