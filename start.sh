#! /bin/bash

echo -ne "Which window manager do you want to start?\nb=bspwm\nd=dwm\no=openbox\nq=exit and don't start X\n: "

read selection

[ "$selection" = "b" ] && export desktop=bspwm && startx
[ "$selection" = "d" ] && export desktop=dwm && startx
[ "$selection" = "o" ] && export desktop=openbox && startx
[ "$selection" = "q" ] && exit

exit
