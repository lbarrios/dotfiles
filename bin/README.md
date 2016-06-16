### Instalación
```bash
ln -s ${DOTFILES}/bin ~/bin
ln -s ${DOTFILES}/share ~/share
```

### fuzzy_lock.sh
Bloquea la pantalla, sacando una captura, y pixelandola.

#### Dependencias
+ ImageMagick (Mogrify)
+ Scrot (para capturar pantalla)
+ i3 (i3lock)

### notify_locking_screen.sh
Muestra un mensaje avisando que la pantalla se está por bloquear.
Reproduce un sonido de notificación.

#### Dependencias
+ ring_terminal_bell.sh
+ play_sound_notification.sh
+ O sea que tiene algunas dependencias, indirectamente..

### ring_terminal_bell.sh
Suena un beep por el speaker de la pc.

#### Dependencias
+ Idealmente, beep. Sino se las trata de arreglar..

### play_sound_notification.sh
Suena un mp3 de notificación.
La ruta por ahora está hardcodeada.
Yokese.

#### Dependencias
+ haber montado la carpeta share de este mismo repositorio (!)
+ mplayer por ahora.

