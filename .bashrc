# ------------------------------------------------------------------------------
# .bashrc ----------------------------------------------------------------------

[[ $- != *i* ]] && return

export PATH=$PATH:~/bin

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

. ~/bin/bash/functions.sh
. ~/bin/bash/aliases.sh
