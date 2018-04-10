ssh -t root@server210-3.jeffwcollins.com bash -c "' << EOF
'apt-get update'
EOF
'"
ssh -t root@server210-3.jeffwcollins.com bash -c "' << EOF
'apt-get upgrade -y'
EOF
'"
ssh -t root@server210-3.jeffwcollins.com bash -c "' << EOF
'apt-get autoremove'
EOF
'"
ssh -t root@server210-3.jeffwcollins.com bash -c "' << EOF
'apt-get autoclean'
EOF
'"
