#!/bin/sh -e
# Requires mplayer
if [ -f /usr/bin/mplayer ]; then
/usr/bin/mplayer --quiet ~/share/sounds/game_alert.mp3 > /dev/null
fi

# Requires mpg123
if [ -f /usr/bin/mpg123 ]; then
/usr/bin/mpg123 -q ~/share/sounds/game_alert.mp3 > /dev/null
fi
