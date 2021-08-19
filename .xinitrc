#! /bin/bash

# ~/src/dwm/start

# ~/.xinitrc.$desktop

# openbox-session

if [ $desktop = 'dwm' ]
then
	$HOME/src/dwm/start
elif [ $desktop = 'openbox' ]
then
	openbox-session
elif [ $desktop = 'bspwm' ]
then
#	xclickroot -r $HOME/src/xmenu/xmenu.sh & 
#	killall -q picom
#	picom -fb --inactive-opacity 0.90  --active-opacity 0.95
	bspwm > /tmp/bspwm.log
elif [ $desktop = 'tinywm' ]
then
	$HOME/src/tinywm/start
elif [ $desktop = 'catwm' ]
then
	$HOME/src/catwm/start
else
	$HOME/src/dwm/start
fi
