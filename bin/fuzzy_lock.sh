#!/bin/sh
I3LOCK_PID_FILE=~/.i3lock.pid

# Don't execute if there is a instance of i3lock running
i3locked=`pgrep --terminal pts/1 i3lock | wc -l`
[ "$i3locked" = "0" ] || exit 1

# Take a screenshot
scrot /tmp/screen_locked.png -z

# Pixellate it 10x
#mogrify -scale 25% -scale 400% /tmp/screen_locked.png
#mogrify -blur 0x2 /tmp/screen_locked.png
mogrify -blur 0x1 -scale 25% -scale 400% -blur 0x1 /tmp/screen_locked.png

# Play sound notification
~/bin/play_sound_notification.sh &
# Ring speaker bell
~/bin/ring_terminal_bell.sh &

# Lock screen displaying this image.
killall i3lock 2>/dev/null; killall i3lock 2>/dev/null # fucking orphaned processes..
i3lock -i /tmp/screen_locked.png -u -c 000000 -e
# Get i3lock pid, and put into /var/run
i3pid=$!
sleep 1
echo "$i3pid" > ${I3LOCK_PID_FILE}

# Poll for i3lock termination
i3locked=`pgrep i3lock | wc -l`
while [ "$i3locked" -ne "0" ]; do
	# hehe
	sleep 1
	i3locked=`pgrep i3lock | wc -l`
done
# Play sound notification
#~/bin/play_sound_notification.sh &
# Ring speaker bell
#~/bin/ring_terminal_bell.sh &

# Next lines are so stupid..
# i3 process is terminated, plz delete pid
rm ${I3LOCK_PID_FILE}
# Why sometimes there are orphaned i3lock processes?
killall i3lock 2>/dev/null
killall i3lock 2>/dev/null
killall i3lock 2>/dev/null
killall i3lock 2>/dev/null
killall i3lock 2>/dev/null
killall i3lock 2>/dev/null

# Turn the screen off after a delay.
#sleep 60; pgrep i3lock && xset dpms force off

