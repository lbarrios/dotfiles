### Instalación ARCH
Suponiendo que la carpeta del repositorio se encuentre en la ruta `~/repositorios/dotfiles`, hacer algo como:

```bash
DOTFILES=~/repositorios/dotfiles
FILE=.extend.Xresources
if [ -f ~/${FILE} ]; then
	if [ -f ~/${FILE}.original ]; then
		echo "El archivo ~/${FILE}.original ya existe, no se puede seguir"
	else
		echo "El archivo ~/${FILE} ya existía, moviendo a ~/${FILE}.original"
		mv ~/${FILE} ~/${FILE}.original
		ln -s ${DOTFILES}/urxvt/extend.Xresources ~/${FILE}
	fi
else
    echo "Creando el archivo ~/${FILE}"
	ln -s ${DOTFILES}/urxvt/extend.Xresources ~/${FILE}
fi
```

### Instalación de ext
Instalar en ~/.urxvt/
