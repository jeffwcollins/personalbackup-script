ssh -t root@server210-3.jeffwcollins.com << EOF
'apt-get update'
EOF

ssh -t root@server210-3.jeffwcollins.com << EOF
'apt-get upgrade -y'
EOF

ssh -t root@server210-3.jeffwcollins.com << EOF
'apt-get autoremove'
EOF

ssh -t root@server210-3.jeffwcollins.com << EOF
'apt-get autoclean'
EOF
