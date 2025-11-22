#!/bin/bash

# Matikan pesan login
touch ~/.hushlogin

# Hapus motd dan issue (hanya jika root)
[[ $EUID -eq 0 ]] && rm -f /etc/motd /etc/issue

# Download finshy ke home user
wget -qO ~/.finshy.sh https://raw.githubusercontent.com/mathewgilbert/FinshyOS/refs/heads/main/finshy.sh
chmod +x ~/.finshy.sh

# Tambahkan ke ~/.bashrc di baris paling bawah
grep -qxF "bash ~/.finshy.sh" ~/.bashrc || echo "bash ~/.finshy.sh" >> ~/.bashrc
