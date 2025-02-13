#!/bin/bash

# Cài đặt TightVNC
sudo apt update
sudo apt install -y tightvncserver
sudo apt update -y
sudo apt install xfce4 -y

curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up
# Thiết lập mật khẩu VNC tự động
echo -e "123456\n123456" | vncpasswd

# Khởi động VNC server
tightvncserver -geometry 1920x1080 :1
