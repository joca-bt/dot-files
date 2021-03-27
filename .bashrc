# ------------------------------------------------------------------------------
# .bashrc ----------------------------------------------------------------------

[[ "$-" != *'i'* ]] && return

export PATH="${PATH}:${HOME}/bin:${HOME}/go/bin:${HOME}/.local/bin"

export EDITOR='vim'
export VISUAL='emacsclient -n'

export LESSHISTFILE='-'
[[ -x "$(command -v lesspipe)" ]] && eval "$(lesspipe)"

bind 'set colored-stats on'
bind 'set completion-ignore-case on'
bind 'set completion-map-case on'
bind 'set mark-directories on'
bind 'set mark-symlinked-directories on'
bind 'set show-all-if-unmodified on'
bind 'set skip-completed-text on'

export HISTCONTROL='erasedups'
export HISTFILESIZE=10000
export HISTIGNORE='c:r:x:ls:la'
export HISTSIZE=
shopt -s cdspell
shopt -s checkjobs
shopt -s checkwinsize
shopt -s cmdhist
shopt -s direxpand
shopt -s dirspell
shopt -s extglob
shopt -s globstar
shopt -s histappend
shopt -s lithist
shopt -s nocaseglob

source "${HOME}/bin/.prompt"

# ------------------------------------------------------------------------------
# aliases ----------------------------------------------------------------------

alias e='emacsclient -n'

alias c='clear'
alias r='reset'
alias x='exit'

alias ls='ls -qF --color=auto'
alias la='ls -lhA'

alias grep='grep --color=auto'

PS_FORMAT='s,pid,tname,start,cmd'
alias pst='ps -o "${PS_FORMAT}"'
alias psu='ps -U "${USER}" -o "${PS_FORMAT}"'

alias ctar='tar -caf'
alias xtar='tar -xf'

alias pull='git pull --rebase=merges origin "$(git branch --show-current)"'
alias push='git push origin "$(git branch --show-current)"'
