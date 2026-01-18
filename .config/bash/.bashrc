case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac


alias l='LC_ALL=C ls -lah --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias tmux='tmux -f ~/env/.config/tmux/tmux.conf'


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

PS1='\[$(tput setaf 237)\]\t \[$(tput setaf 33)\]\u@\h \[$(tput setaf 240)\]\w \[\e[0m\]'


bind "set show-all-if-ambiguous on"        # on: сразу список после Tab
bind "set completion-ignore-case on"       # on: игнор регистра
bind "set menu-complete-display-prefix on" # on: видимый общий префикс
bind '"\t": menu-complete'                 # Tab: перебор вариантов
bind '"\e[A": history-search-backward'     # ↑: поиск по истории назад
bind '"\e[B": history-search-forward'      # ↓: поиск по истории вперед

export DISPLAY=192.168.5.5:0.0
export GOROOT=/root/go1.23
