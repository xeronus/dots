#! /bin/sh
export PATH=":/bin:/home/xeronus/.scripts:/home/xeronus/.gem/ruby/2.6.0/bin:$PATH"
set -o vi
HISTFILE="$HOME/.ksh_history"
HISTSIZE=0

# PS1 prompt
export PS1=$'\a\r\a\e[1;34m\a\a\e[31m\a${USER:=$(ulimit -c 0; \                                
    id -un 2>/dev/null || echo \?)}${HOSTNAME%%.*}\a\e[34m\a \a\e[0;33m\a$(            
        local d=${PWD:-?} p=~            
        [[ $p = ?(*/) ]] || d=${d/#$p/~} 
        print -nr -- "$d"                                                                       
)\a\e[1;34m\a  \n\a\e[32m\a$(date +%H:%M)\a\e[34m\a ~ \a\e[0m\a '
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto"
alias p="sudo pacman"
alias se="sudo -E vim"
alias cfv="vim ~/.vimrc"
alias cfk="vim ~/.kshrc"
alias cfx="vim ~/.xinitrc"
alias cfr="vim ~/.Xresources"
alias cfp="vim ~/.profile"
alias vpi="vim +PluginInstall"
alias xres="xrdb -merge ~/.Xresources"
alias gc="git clone"
alias scr="cd /home/xeronus/.scripts"
alias cfa="vim ~/.config/awesome/rc.lua"
alias cfat="vim ~/.config/awesome/themes/default/theme.lua"
alias cfak="vim ~/.config/awesome/keys.lua"
alias cfA="vim ~/.config/awesome/autostart.sh"
alias cda="cd ~/.config/awesome"
alias str="streamlink -p mpv"
alias SS="sudo systemctl"
alias html2pdf="wkhtmltopdf"
alias fltrdr="fltrdr --config-base=~/.config/fltrdr"
#se() { du -a ~/.scripts/* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}
# sd() { du -a /home/xeronus/* | awk '{print $2}' | fzf | xargs -r cd 'dirname $3'  ;}
