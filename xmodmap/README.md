### Instalación (en manjaro-i3)
Suponiendo que la carpeta del repositorio se encuentre en la ruta `~/repositorios/dotfiles`, hacer algo como:

```bash
DOTFILES=~/repositorios/dotfiles
ln -s ${DOTFILES}/xmodmap/Xmodmap ~/.Xmodmap
```

Y agregar a ~/.extend.xinitrc

```bash
xmodmap ~/.Xmodmap
```

o directamente mediante
```bash
DOTFILES=~/repositorios/dotfiles
ln -s ${DOTFILES}/xmodmap/extend.xinitrc ~/.extend.xinitrc
```
