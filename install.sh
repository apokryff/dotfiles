#!/bin/bash

DOTFILES_DIR=~/dotfiles
TARGET_FILE=.zshrc
STOW_DIR=zsh
LINK_PATH=~/$TARGET_FILE

if [ -L "$LINK_PATH" ]; then
    echo "$TARGET_FILE is already linked."
else
    echo "Linking $TARGET_FILE..."
    stow --target=$HOME --stow --dir=$DOTFILES_DIR --ignore='^(?!.*\.zshrc$).*' $STOW_DIR
    echo "$TARGET_FILE has been linked."
fi

