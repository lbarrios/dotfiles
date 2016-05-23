# dotfiles

### Consideraciones

* Es conveniente poner el repositorio en ~/repositorios/dotfiles

* Es conveniente configurar la variable de entorno $DOTFILES apuntando a la carpeta donde se encuentre el repositorio. Para ello se puede usar bash_aliases.

### Ejemplo de instalación
```bash
mkdir -p ~/repositorios/
cd ~/repositorios/
git clone https://github.com/lbarrios/dotfiles.git
# ya que estamos, bash_aliases
ln -s ~/repositorios/dotfiles/bash_aliases/.bash_aliases ~/
```
