case $- in
    *i*) ;;
      *) return;;
esac

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# АЛИАСЫ
alias l='LC_ALL=C ls -lah --color=auto --group-directories-first'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias tmux='tmux -f ~/env/.config/tmux/tmux.conf'
alias du='du -hd1'

# АВТОДОПОЛНЕНИЕ
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# ПРИГЛАШЕНИE 
PS1='\[$(tput setaf 237)\]\t \[$(tput setaf 33)\]\u@\h \[$(tput setaf 240)\]\w \[\e[0m\]'

# СЕССИИ
HISTCONTROL=ignoreboth 			# Игнорировать дубликаты (ignoredups)
export HISTFILE="$HOME/.bash_history" 	# Явное указание пути к файлу,
shopt -s histappend 			# Добавление в файл истории
HISTFILESIZE=20000 			# Максимальное количество строк, в файле
shopt -s checkwinsize 			# Проверять размер окна после каждой команды и обновлять переменные LINES и COLUMNS
export PROMPT_COMMAND="history -a; history -c; history -r; ${PROMPT_COMMAND}" # История команд


# НАВИГАЦИЯ
bind "set show-all-if-ambiguous on"        # on: сразу список после Tab
bind "set completion-ignore-case on"       # on: игнор регистра
bind "set menu-complete-display-prefix on" # on: видимый общий префикс
bind '"\t": menu-complete'                 # Tab: перебор вариантов
bind '"\e[A": history-search-backward'     # ↑: поиск по истории назад
bind '"\e[B": history-search-forward'      # ↓: поиск по истории вперед
bind '"\e[3;5~": kill-word'        	   # Ctrl+Delete: удалить слово справа (обычно отправляет Esc [ 3 ; 5 ~)
bind '"\C-h": backward-kill-word'	   # Ctrl + backspace: удалить слово слева

