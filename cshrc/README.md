### Consideraciones
* Idealmente pensado para FreeBSD..

### Dependencias
* coreutils (FSF: gls, gdircolors, etc, __/usr/ports/sysutils/coreutils__)
* colortail (__/usr/ports/misc/colortail__)

### Instalación
```bash
ln -s ${DOTFILES}/cshrc/.cshrc.lbarrios ~/
echo "# cshrc - lbarrios" >> ~/.cshrc
echo "source ~/.cshrc.lbarrios" >> ~/.cshrc
ln -s ${DOTFILES}/cshrc/.login ~/
ln -s ${DOTFILES}/cshrc/.login_conf ~/
```

