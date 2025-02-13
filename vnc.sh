#!/bin/bash

# Cài đặt TightVNC
sudo apt update
sudo apt install -y tightvncserver
sudo apt update -y
sudo apt install xfce4 -y
wget https://raw.githubusercontent.com/b3-auth/Ubuntu-TightVnc/refs/heads/main/vnc.sh
chmod +x vnc.sh
./vnc.sh
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up
# Thiết lập mật khẩu VNC tự động
echo -e "123456\n123456" | vncpasswd

# Khởi động VNC server
tightvncserver -geometry 1920x1080 :1
