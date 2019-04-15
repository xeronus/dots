#!/bin/sh
ENV=~/.kshrc
export ENV
export BROWSER="firefox"
export EDITOR="vim"
export VISUAL="vim"
export TERMINAL="st"
echo "$0" | grep "mksh$" >/dev/null && [ -f ~/.kshrc ] && source "$HOME/.kshrc"
[ "$tty"="/dev/tty1" ] && ! pgrep -x awesome >/dev/null && exec startx
export GPG_TTY=$(tty)
