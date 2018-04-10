ssh -t root@server210-3.jeffwcollins.com "apt-get update && apt-get upgrade -y"

ssh -t root@server210-3.jeffwcollins.com "apt-get autoremove"

ssh -t root@server210-3.jeffwcollins.com bash "apt-get autoclean"
