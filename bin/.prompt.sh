# --------------------------------------------------------------------------------------------------
# prompt -------------------------------------------------------------------------------------------

RED="\[$(tput setaf 1)\]"
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"

prompt::prompt() {
    local status="$?"

    PS1='\n'
    PS1+="$(prompt::jobs)"
    PS1+="$(prompt::time)"
    PS1+="$(prompt::directory)"
    PS1+="$(prompt::error "${status}")"
    PS1+="$(prompt::mark)"

    printf '\e]0;%s\a' "$(prompt::title)"
}

prompt::directory() {
    echo -n '\W '
}

prompt::error() {
    local status="$1"

    if (( status != 0 )); then
        echo -n "${RED}${status}${RESET} "
    fi
}

prompt::jobs() {
    local jobs="$(jobs | wc -l)"

    if (( jobs != 0 )); then
        echo -n "${jobs} "
    fi
}

prompt::mark() {
    echo -n "${BOLD}❯${RESET} "
}

prompt::time() {
    echo -n '\A '
}

prompt::title() {
    echo -n "${PWD/#${HOME}/\~}"
}

shopt -u promptvars
PROMPT_COMMAND='prompt::prompt'
