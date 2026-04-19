#!/bin/sh

# Updating package repositories and upgrading existing packages
apt update && apt upgrade -y

rm $PREFIX/etc/motd

# Installing terminal applications: man (manual pages),
#       bat (cat alternative), tmux (terminal multiplexer),
#       neovim (text editor), git (version control),
#       openssh (SSH client)
apt install man bat tmux neovim git openssh lazygit -y

# Installing x11 repository for graphical applications
apt install x11-repo -y

# Installing X11 server alongwith Open GL and Vulkan drivers for graphical applications
apt install termux-x11-nightly opengl mesa-vulkan-icd-freedreno -y 

# Installing graphical applications: bspwm (window manager),
#       alacritty (terminal emulator), polybar (status bar),
#       dunst (notification daemon), and feh (image viewer),
#       libxkbcommon (keyboard compiler)
apt install bspwm alacritty polybar dunst feh libxkbcommon -y

repo_url="https://raw.githubusercontent.com/devedaniele/dsx/refs/heads/main"
