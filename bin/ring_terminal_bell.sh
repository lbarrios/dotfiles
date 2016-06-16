#!/bin/sh -e
# Ring the terminal bell
# echo "\a" # does not work in some shells

$(hash beep 2> /dev/null && beep) || tput bel
