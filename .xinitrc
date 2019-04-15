#!/bin/sh
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
xset r rate 200 50 
exec awesome
