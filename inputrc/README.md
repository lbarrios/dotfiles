### Objetivo
Cambia el comportamiento de la búsqueda de comandos anteriores (teclas UP/DOWN del teclado). Busca en base a lo que uno ya haya escrito. Ejemplo, si escribo sudo, y luego presiono UP/DOWN, va a buscar todos aquellos comandos que comiencen con sudo... esto es realmente útil. La búsqueda normal apesta.

### Instalación
```bash
ln -s ${DOTFILES}/inputrc/.inputrc ~/
```
