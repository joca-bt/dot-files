# --------------------------------------------------------------------------------------------------
# .bashrc ------------------------------------------------------------------------------------------

[[ "$-" != *'i'* ]] && return

export PATH="${PATH}:${HOME}/bin"

export EDITOR='emacs -Q'
export VISUAL='emacsclient -n'

export LESSHISTFILE='-'
[[ -x "$(command -v lesspipe)" ]] && eval "$(lesspipe)"

# https://www.gnu.org/software/bash/manual/html_node/Readline-Init-File-Syntax.html
bind 'set colored-stats on'
bind 'set completion-ignore-case on'
bind 'set completion-map-case on'
bind 'set mark-symlinked-directories on'
bind 'set show-all-if-unmodified on'
bind 'set skip-completed-text on'
bind 'set visible-stats on'

# https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html
# https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html
export HISTCONTROL='erasedups'
export HISTFILESIZE=10000
export HISTIGNORE='c:r:ls:la'
export HISTSIZE=-1
shopt -s cdspell
shopt -s checkjobs
shopt -s dirspell
shopt -s extglob
shopt -s globstar
shopt -s histappend
shopt -s lithist
shopt -s nocaseglob

source "${HOME}/bin/.aliases.sh"
source "${HOME}/bin/.prompt.sh"
