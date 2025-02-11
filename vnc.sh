#!/bin/bash

# Cài đặt TightVNC
sudo apt update
sudo apt install -y tightvncserver

# Thiết lập mật khẩu VNC tự động
echo -e "123456\n123456" | vncpasswd

# Khởi động VNC server
tightvncserver -geometry 1920x1080 :1
