#!/bin/bash

sudo pacman -S --needed base-devel git 
git clone https://aur.archlinux.org/paru.git
cd paru || exit
makepkg -si