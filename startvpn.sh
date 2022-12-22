#!/bin/bash
#
VPNFILE=`ls -1 /etc/openvpn/ovpn_*  | shuf -n 1 `
gpg --output /tmp/ovpn.txt  --batch --passphrase BrudneChuj3! /home/user/KaliLinux/ovpn_pass.txt.gpg
sed -i  's/auth-user-pass/auth-user-pass \/tmp\/ovpn.txt/g'  `locate $VPNFILE`
openvpn `locate $VPNFILE`
rm /tmp/ovpn.txt
