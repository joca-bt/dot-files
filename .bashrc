# ------------------------------------------------------------------------------
# .bashrc ----------------------------------------------------------------------

[[ "$-" != *'i'* ]] && return

[[ -f /etc/bashrc ]] && . /etc/bashrc

export PATH="${PATH}:~/bin"

export EDITOR='vim'
export VISUAL='emacsclient -n'

bind 'set completion-ignore-case on'
bind 'set show-all-if-unmodified on'
bind 'set skip-completed-text on'
shopt -s cdspell
shopt -s direxpand
shopt -s dirspell
shopt -s extglob
shopt -s globstar
shopt -s nocaseglob

export HISTCONTROL='erasedups'
export HISTFILESIZE=10000
export HISTIGNORE='c:r:x:ls:la'
export HISTSIZE=-1
shopt -s cmdhist
shopt -s histappend
shopt -s lithist

. bin/.prompt

# ------------------------------------------------------------------------------
# aliases ----------------------------------------------------------------------

alias e='emacsclient -n'
alias vi='vim'

alias c='clear'
alias r='reset'
alias x='exit'

alias ls='ls -qF --color=auto'
alias la='ls -lhA'

PS_FORMAT='s,pid,tname,start,cmd'
alias pst='ps -o "${PS_FORMAT}"'
alias psu='ps -u "${USER}" -o "${PS_FORMAT}"'

alias ctar='tar -caf'
alias xtar='tar -xf'

alias pull='git pull --rebase=merges origin "$(git symbolic-ref --short HEAD)"'
alias push='git push origin "$(git symbolic-ref --short HEAD)"'
