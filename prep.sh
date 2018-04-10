#
ssh -t root@server210-3.jeffwcollins.com "apt-get update"
#
ssh -t root@server210-3.jeffwcollins.com "apt-get upgrade -y"
#
ssh -t root@server210-3.jeffwcollins.com "apt-get autoremove"
#
ssh -t root@server210-3.jeffwcollins.com bash "apt-get clean"
#
ssh -t root@server210-3.jeffwcollins.com bash "apt-get autoclean"
#
