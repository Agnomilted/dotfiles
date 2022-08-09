#! /bin/sh

[ -z "$desktop" ] && bspwm > /tmp/bspwm.log
[ "$desktop" = "bspwm" ] && bspwm > /tmp/bspwm.log
[ "$desktop" = "dwm" ] && $HOME/src/dwm/start
[ "$desktop" = "openbox" ] && openbox-session
[ "$desktop" = "tinywm" ] && $HOME/src/tinywm/start
[ "$desktop" = "catwm" ] && $HOME/src/catwm/start
[ "$desktop" = "st-nvim" ] && st -e nvim
