#!/bin/bash

echo "Configuring login screen..."

# Copy the greetd configuration
sudo cp -r ~/dotfiles/.other/greetd /etc

# Copy the faillock configuration
sudo cp ~/dotfiles/.other/faillock.conf /etc/security

echo "Login screen configured."
