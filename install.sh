#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR DOTFILES_CACHE EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sfv "$DOTFILES_DIR/system/.bashrc" ~
ln -sfv "$DOTFILES_DIR/system/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/system/.bash_aliases" ~
ln -sfv "$DOTFILES_DIR/system/.gitconfig" ~

mkdir -p ~/.ssh
ln -sfv "$DOTFILES_DIR/system/.ssh/config" ~/.ssh/config

