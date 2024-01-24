# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export LIBVA_DRIVER_NAME=iHD

##-----------------------------------------------------
## synth-shell-prompt.sh
if [ -f /home/moutasim/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/moutasim/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
## alias
if [ -f /home/moutasim/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/moutasim/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
## better-history
if [ -f /home/moutasim/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/moutasim/.config/synth-shell/better-history.sh
fi



alias francinette=/home/moutasim/francinette/tester.sh

alias paco=/home/moutasim/francinette/tester.sh

export PATH="$PATH:~/flutter/bin"

neofetch

alias u='sudo dnf update'
alias ug='sudo dnf upgrade'
alias i='sudo dnf install'
alias r='sudo dnf remove'
alias q='dnf search'
alias a='sudo dnf autoremove'
alias ca='sudo dnf clean all'
alias re='sudo systemctl reboot'
alias shutdown='sudo systemctl poweroff'

alias ..='cd ..'
alias ...='cd ../..'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias c='clear'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gp='git pull'
alias gb='git branch'
alias gco='git checkout'
alias glog='git log --oneline --decorate --all --graph'

alias myip='curl ifconfig.me'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
alias ports='netstat -tulanp'
alias ipinfo='curl ipinfo.io'

alias grep='grep --color=auto'
alias grepi='grep -i --color=auto'

alias s='sudo'
alias i3config='vim ~/.config/i3/config'
