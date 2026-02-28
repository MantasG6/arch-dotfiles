#!/bin/bash

echo "Setting up fingerprint..."

# Install required packages
sudo pacman -S --needed --noconfirm fprintd
paru -S --needed --noconfirm pam-fprint-grosshack

# Copy required system files
sudo cp ~/dotfiles/.other/fprint/50-net.reactivated.fprint.device.enroll.rules /etc/polkit-1/rules.d/
sudo cp ~/dotfiles/.other/fprint/hyprlock /etc/pam.d/
sudo cp ~/dotfiles/.other/fprint/sudo /etc/pam.d/
sudo cp ~/dotfiles/.other/fprint/su /etc/pam.d/

echo "Fingerprint configured."
