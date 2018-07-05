# ------------------------------------------------------------------------------
# .bashrc ----------------------------------------------------------------------

[[ "$-" != *'i'* ]] && return

export EDITOR='vim'
export VISUAL='emacsclient -n'

export PATH="${PATH}:~/bin"

if [[ "${MSYSTEM}" ]]; then
    __path="${__emacs}:${__meld}:${__git}"
    export PATH="${__path//;/:}:${PATH}"
fi

# ------------------------------------------------------------------------------
# bash and readline ------------------------------------------------------------

# history
export HISTFILESIZE=1000
export HISTSIZE=-1
export HISTCONTROL='erasedups'
export HISTIGNORE='c:r:x:ls:la:lal'
shopt -s cmdhist
shopt -s histappend
shopt -s lithist

# completion
bind 'set completion-ignore-case on'
bind 'set show-all-if-unmodified on'
bind 'set skip-completed-text on'
shopt -s cdspell
shopt -s direxpand
shopt -s dirspell
shopt -s extglob
shopt -s globstar
shopt -s nocaseglob

# prompt
source .prompt

# ------------------------------------------------------------------------------
# functions --------------------------------------------------------------------

function __get_current_branch {
    echo -n "$(git symbolic-ref --short HEAD)"
}

# ------------------------------------------------------------------------------
# aliases ----------------------------------------------------------------------

alias e='emacsclient -n'
alias vi='vim'

alias c='clear'
alias r='reset'
alias x='exit'

alias ls='ls -qF --color=auto'
alias la='ls -lhA'
alias lal='la | less'

alias takep='chmod -R g-rwx,o-rwx'
alias givep='chmod -R g+r,o+r'

__ps_format='s,uname,pid,c,nlwp,rss,vsz,tname,start_time,time,cmd'
alias pst='ps -t "$(tty)" -o "${__ps_format}"'
alias psu='ps -u "$(whoami)" -o "${__ps_format}"'

alias ctar='tar -caf'
alias xtar='tar -xf'

alias pull='git pull --rebase=preserve origin "$(__get_current_branch)"'
alias push='git push origin "$(__get_current_branch)"'
