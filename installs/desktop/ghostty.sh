#!/usr/bin/env bash

sudo add-apt-repository -y ppa:mkasberg/ghostty-ubuntu

sudo apt update

sudo apt install -y ghostty

# default terminal for xdg-terminal-exec, used by ctrl+alt+t and "open in terminal"
mkdir -p ~/.config

echo com.mitchellh.ghostty.desktop > ~/.config/xdg-terminals.list
