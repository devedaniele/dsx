#!/bin/sh

apt update

apt upgrade

apt install man x11-repo -y

apt install termux-x11-nightly mesa-vulkan-icd-freedreno bspwm alacritty tmux neovim openssh polybar dunst feh