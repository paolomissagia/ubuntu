#!/bin/bash

# Variables for file paths
ZSHRC=~/.zshrc
TMUX_CONF=~/.config/tmux/tmux.conf

# Check if .zshrc exists, create if not
if [ ! -f "$ZSHRC" ]; then
    touch "$ZSHRC"
fi

# Add configurations to .zshrc
{
    echo 'eval "$(starship init zsh)"'
    echo 'eval "$(~/.local/bin/mise activate zsh)"'
    echo 'export PATH="$PATH:/opt/nvim-linux64/bin"'
    echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh'
    echo 'source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
    echo 'alias ls="eza -lha --group-directories-first --icons"'
} >> "$ZSHRC"

# Ensure tmux config directory exists
mkdir -p ~/.config/tmux

# Check if tmux.conf exists, create if not
if [ ! -f "$TMUX_CONF" ]; then
    touch "$TMUX_CONF"
fi

# Add configuration to tmux.conf
echo 'run-shell ~/.tmux/vim-tmux-navigator/vim-tmux-navigator.tmux' >> "$TMUX_CONF"
