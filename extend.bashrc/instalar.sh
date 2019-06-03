#!/bin/bash
DOTFILES=~/repositorios/dotfiles
if [ -f ~/.extend.bashrc ]; then
        if [ -f ~/.extend.bashrc.original ]; then
                echo "El archivo ~/.extend.bashrc.original ya existe, no se puede seguir"
        else
                echo "El archivo ~/.extend.bashrc ya existía, moviendo a ~/.extend.bashrc.original"
                mv ~/.extend.bashrc ~/.extend.bashrc.original
                ln -s ${DOTFILES}/extend.bashrc/extend.bashrc ~/.extend.bashrc
        fi
else
        ln -s ${DOTFILES}/extend.bashrc/extend.bashrc ~/.extend.bashrc
fi
if [ -f ~/.extend.profile ]; then
        if [ -f ~/.extend.profile.original ]; then
                echo "El archivo ~/.extend.profile.original ya existe, no se puede seguir"
        else
                echo "El archivo ~/.extend.profile ya existía, moviendo a ~/.extend.profile.original"
                mv ~/.extend.profile ~/.extend.profile.original
                ln -s ${DOTFILES}/extend.bashrc/extend.profile ~/.extend.profile
        fi
else
        ln -s ${DOTFILES}/extend.bashrc/extend.profile ~/.extend.profile
fi

