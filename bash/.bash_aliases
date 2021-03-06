#!/bin/bash
# File: .bash_aliases

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias sus="./~/i3exit.sh suspend"

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias hunter_login="firefox http://www.hunter.cuny.edu/myhunter/email"

alias img_compare="compare -compose src invert.pgm pixelate.pgm diff.png"
alias cls="clear"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

alias oops='sudo !!'

alias keyb="sudo dpkg-reconfigure keyboard-configuration"

# sudo chown -cR $USER:$(id -gn $USER) /path/to/folder
alias chown_me="sudo chown -cR $USER:$(id -gn $USER)"

alias chemacs="emacs --with-profile "

alias yeet='mkdir -p "$HOME/.trash" && mv -b -t "$HOME/.trash"'
alias phone='/run/user/1000/gvfs/mtp:host=SAMSUNG_SAMSUNG_Android_3da08dfd'
alias navgui='pcmanfm'
