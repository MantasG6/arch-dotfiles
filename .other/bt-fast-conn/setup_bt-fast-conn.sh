#!/bin/bash

echo "Setting up bluetooth fast connect..."

# Copy toggle script
sudo cp ~/dotfiles/.other/bt-fast-conn/toggle_bt_fast_connect.sh /usr/local/bin/

# Copy service files
sudo cp ~/dotfiles/.other/bt-fast-conn/99-bt-power.rules /etc/udev/rules.d/
sudo cp ~/dotfiles/.other/bt-fast-conn/bt-fast-conn.service /etc/systemd/system/
sudo cp ~/dotfiles/.other/bt-fast-conn/bt-fast-conn /usr/lib/systemd/system-sleep/

# Activate configurations
sudo udevadm control --reload
sudo systemctl daemon-reload
sudo systemctl enable bt-fast-conn.service

echo "Bluetooth fast connect configured."
