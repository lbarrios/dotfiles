#!/bin/sh -e

# Take a screenshot
scrot /tmp/screen_locked.png -z

# Pixellate it 10x
#mogrify -scale 25% -scale 400% /tmp/screen_locked.png
#mogrify -blur 0x2 /tmp/screen_locked.png
mogrify -blur 0x1 -scale 25% -scale 400% -blur 0x1 /tmp/screen_locked.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked.png -u -c 000000 -e

# Turn the screen off after a delay.
#sleep 60; pgrep i3lock && xset dpms force off
