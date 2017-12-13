# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

export PAGER=most
export MANWIDTH=80

GREEN='\[\033[0;32m\]'
CYAN='\[\033[0;36m\]'
LGREEN='\[\033[1;32m\]'
RED='\[\033[0;31m\]'
NC='\[\033[0m\]'

# If root user, then red prompt, else fancy green/blue prompt

if [ $(id -u) -eq 0 ];
then
	PS1="${RED}\u@\H:\w${NC}\# "
else
	PS1="${GREEN}\u${NC}@${CYAN}\H${NC}:${LGREEN}\w${NC}\$ "
fi

function cdl {
	builtin cd "$@" && ls -al;
	}

alias ll='ls -alv'
alias suspend90='echo 90 minutes from `date +%r`; sleep 90m; systemctl suspend'
alias suspend120='echo 120 minutes from `date +%r`; sleep 120m; systemctl suspend'
alias psa='ps -AH'
alias sketchup='wine "C:\Program Files (x86)\SketchUp\SketchUp 2016\SketchUp.exe" "/DisableRubyAPI"'

