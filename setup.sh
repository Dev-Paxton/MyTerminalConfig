#!/bin/bash
# Script to setup the terminal

echo "Hyper installed?"
echo "https://github.com/vercel/hyper/releases"

read -p "Continue? [y/n] " c
if [ "$c" = "n" ]
then
        exit 0
fi

echo "Install Zsh"
sudo apt install zsh

echo "Install Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s $(which zsh)

cp ./.hyper.js ~
cp ./.zshrc ~
cp ./custom_theme.zsh-theme ~/.oh-my-zsh/themes/custom_theme.zsh-theme

zsh