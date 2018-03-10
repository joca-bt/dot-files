# ------------------------------------------------------------------------------
# .profile ---------------------------------------------------------------------

export EDITOR='vim'
export VISUAL='emacsclient -n'

if [[ "${MSYSTEM}" ]]; then
    __path="${__emacs}:${__meld}:${__git}"
    export PATH="${__path//;/:}:${PATH}"
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
