#!/bin/bash

DOTFILES=~/repositorios/dotfiles
if [ -f ~/.extend.Xresources ]; then
	if [ -f ~/.extend.Xresources.original ]; then
		echo "El archivo ~/.extend.Xresources.original ya existe, no se puede seguir"
	else
		echo "El archivo ~/.extend.Xresources ya existía, moviendo a ~/.extend.Xresources.original"
		mv ~/.extend.Xresources ~/.extend.Xresources.original
		ln -s ${DOTFILES}/extend.Xresources/extend.Xresources ~/.extend.Xresources
	fi
else
	ln -s ${DOTFILES}/extend.Xresources/extend.Xresources ~/.extend.Xresources
fi
