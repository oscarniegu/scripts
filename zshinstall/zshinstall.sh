#! /usr/bin/bash

paru -S --needed git zsh zsh-completions fzf bat lsd ttf-meslo-nerd-font-powerlevel10k

# instalar oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
