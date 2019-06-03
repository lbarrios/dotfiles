#!/bin/bash
ln -s ${DOTFILES}/fish/config.fish ~/.config/fish/config.fish
DOTFILES=~/repositorios/dotfiles
if [ -f ~/.config/fish/config.fish ]; then
        if [ -f ~/.config/fish/config.fish.original ]; then
                echo "El archivo ~/.config/fish/config.fish.original ya existe, no se puede seguir"
        else
                echo "El archivo ~/.config/fish/config.fish ya existía, moviendo a ~/.config/fish/config.fish.original"
                mv ~/.config/fish/config.fish ~/.config/fish/config.fish.original
                ln -s ${DOTFILES}/fish/config.fish ~/.config/fish/config.fish
        fi
else
        ln -s ${DOTFILES}/fish/config.fish ~/.config/fish/config.fish
fi
