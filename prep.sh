ssh -t root@server210-3.jeffwcollins.com bash -c "' << EOF
apt-get update
EOF
'"
ssh -t root@server210-3.jeffwcollins.com bash -c "' << EOF1
apt-get upgrade -y
EOF1
'"
ssh -t root@server210-3.jeffwcollins.com bash -c "' << EOF2
apt-get autoremove
EOF2
'"
ssh -t root@server210-3.jeffwcollins.com bash -c "' << EOF3
apt-get autoclean
EOF3
'"
