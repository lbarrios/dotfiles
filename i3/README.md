Está todo re cabeza por ahora. Parece que hay que dedicarle tiempo a esto..

### Dependencias
* __Debian?__: Por ahora asumo que uso siempre Debian?
* __scrot__: Para capturar pantalla
* __dunst__: Para las notificaciones
* __xautolock__: Para bloquear la pantalla automáticamente
* __dotfiles/bin__: Intalar bin, de este propio repositorio
* __i3-gnome-pomodoro__: i3-gnome-pomodoro-git en aur

### Instalación
```bash
#ln -s ${DOTFILES}/dotfiles/i3/ ~/.config/
mkdir -p ~/.i3/
ln -s ${DOTFILES}/dotfiles/i3/config ~/.i3/config
sudo ln -s ${DOTFILES}/dotfiles/i3/config/i3status-wrapper.py /usr/local/sbin
```
