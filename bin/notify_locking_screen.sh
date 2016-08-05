#!/bin/bash

# Don't execute if there is a instance of i3lock running
#i3locked=`pgrep --terminal pts/1 i3lock | wc -l`
i3locked=`pgrep i3lock | wc -l`
[ "$i3locked" = "0" ] || exit 1

# If there is not i3lock instance running, show notification
notify-send -u critical -t 9000 -- 'LOCKING screen in 10 seconds' &
~/bin/play_sound_notification.sh &
~/bin/ring_terminal_bell.sh &
