#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME/nvim"

# ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
# ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
# ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install neovim

# packages=(
#   npm
#   lazygit
#   kubectl
#   fd
# )
#
# for package in "${packages[@]}"; do
#   echo "Installing $package..."
#   sudo su vscode
#   sudo apt-get update
#   sudo apt-get install "$package"
# done
#
# echo "All packages installed"
