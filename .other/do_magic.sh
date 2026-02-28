sudo pacman -S --needed --noconfirm base-devel git
# For man choose 1st option (man-db)
sudo pacman -S --needed --noconfirm man
sudo pacman -S --needed --noconfirm nvim
sudo pacman -S --needed --noconfirm wget
sudo pacman -S --needed --noconfirm xdg-user-dirs
xdg-user-dirs-update
cd ~/Downloads
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ../
rm -rf paru
sudo pacman -S --needed --noconfirm hyprland
sudo pacman -S --needed --noconfirm ghostty
sudo pacman -S --needed --noconfirm linux-zen-headers
# Uncomment if using Nvidia
# sudo pacman -S --needed --noconfirm nvidia-dkms
# echo -e "options nvidia_drm modeset=1" | sudo tee -a /etc/modprobe.d/nvidia.conf
sudo pacman -S --needed --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-atkinson-hyperlegible ttf-firacode-nerd ttf-jetbrains-mono-nerd
sudo pacman -S --needed --noconfirm mako
mkdir -p ~/.local/share/dbus-1/services
echo -e "[D-BUS Service]\nName=org.freedesktop.Notifications\nExec=/usr/bin/mako" | sudo tee -a ~/.local/share/dbus-1/services/org.freedesktop.Notifications.service
sudo pacman -S --needed --noconfirm libnotify
sudo pacman -S --needed --noconfirm xdg-desktop-portal-hyprland
paru -S --needed --noconfirm nwg-look
sudo pacman -S --needed --noconfirm qt6ct qt5ct
sudo pacman -S --needed --noconfirm xdg-desktop-portal-gtk
sudo pacman -S --needed --noconfirm greetd
paru -S --needed --noconfirm hyprpolkitagent
sudo pacman -S --needed --noconfirm brightnessctl
sudo pacman -S --needed --noconfirm playerctl
sudo pacman -S --needed --noconfirm greetd-tuigreet
sudo systemctl enable greetd.service
sudo pacman -S --needed --noconfirm wofi
sudo pacman -S --needed --noconfirm hypridle
sudo pacman -S --needed --noconfirm hyprpaper
sudo pacman -S --needed --noconfirm imagemagick
sudo pacman -S --needed --noconfirm hyprlock
sudo pacman -S --needed --noconfirm spotify-launcher
sudo pacman -S --needed --noconfirm gimp
sudo pacman -S --needed --noconfirm hyprsunset
sudo pacman -S --needed --noconfirm firefox
paru -S --needed --noconfirm google-chrome
# Set Firefox as the default for http and https
xdg-mime default firefox.desktop x-scheme-handler/http
xdg-mime default firefox.desktop x-scheme-handler/https
# Also set it for HTML files (optional but recommended)
xdg-mime default firefox.desktop text/html
sudo pacman -S --needed --noconfirm zip unzip
sudo pacman -S --needed --noconfirm waybar
sudo pacman -S --needed --noconfirm otf-font-awesome
sudo usermod -aG input $(whoami)
sudo pacman -S --needed --noconfirm pavucontrol
sudo pacman -S --needed --noconfirm bluetui
sudo pacman -S --needed --noconfirm impala
sudo pacman -S --needed --noconfirm fastfetch
sudo pacman -S --needed --noconfirm openssh
sudo pacman -S --needed --noconfirm usbutils
sudo pacman -S --needed --noconfirm bluez-utils
sudo pacman -S --needed --noconfirm bat
sudo pacman -S --needed --noconfirm zsh
chsh -s $(which zsh)
curl -s https://ohmyposh.dev/install.sh | bash -s
sudo pacman -S --needed --noconfirm stow
sudo pacman -S --needed --noconfirm ripgrep
sudo pacman -S --needed --noconfirm grim slurp swappy
sudo pacman -S --needed --noconfirm fd
# Copy over the configurations
stow .
stow -t ~/.config .config
sudo ln -s ~/dotfiles/.other/greetd /etc
mkdir ~/.local/share/icons 
ln -s ~/dotfiles/.other/Red-C ~/.local/share/icons
ln -s ~/dotfiles/.other/faillock.conf /etc/security
ln -s ~/dotfiles/.other/nwg-look ~/.local/share
# Make bluetooth fast when charging
sudo ln -s ~/dotfiles/.other/bt-fast-conn/toggle_bt_fast_connect.sh /usr/local/bin/
sudo ln -s ~/dotfiles/.other/bt-fast-conn/99-bt-power.rules /etc/udev/rules.d/
sudo cp ~/dotfiles/.other/bt-fast-conn/bt-fast-conn.service /etc/systemd/system/
sudo ln -fs /etc/systemd/system/bt-fast-conn.service ~/dotfiles/.other/bt-fast-conn/bt-fast-conn.service
sudo ln -s ~/dotfiles/.other/bt-fast-conn/bt-fast-conn /usr/lib/systemd/system-sleep/bt-fast-conn
sudo udevadm control --reload
sudo systemctl daemon-reload
sudo systemctl enable bt-fast-conn.service
# Fingerprint setup
sudo pacman -S --needed --noconfirm fprintd
paru -S --needed --noconfirm pam-fprint-grosshack
sudo ln -fs ~/dotfiles/.other/fprint/50-net.reactivated.fprint.device.enroll.rules /etc/polkit-1/rules.d/
sudo ln -fs ~/dotfiles/.other/fprint/hyprlock /etc/pam.d/
sudo ln -fs ~/dotfiles/.other/fprint/sudo /etc/pam.d/
sudo ln -fs ~/dotfiles/.other/fprint/su /etc/pam.d/
