# ------------------------------------------------------------------------------
# aliases.sh -------------------------------------------------------------------

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

alias ctar='tar -vcaf'
alias xtar='tar -vxf'

__ps_format='s,uname,pid,c,nlwp,rss,vsz,tname,start_time,time,cmd'
alias pst="ps -t $(tty) -o $__ps_format"
alias psu="ps -u $(whoami) -o $__ps_format"
