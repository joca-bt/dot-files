# ------------------------------------------------------------------------------
# functions.sh -----------------------------------------------------------------

function __get_current_branch {
    echo "$(git symbolic-ref --short HEAD)"
}

function pull {
    local branch="${1:-$(__get_current_branch)}"

    git pull --rebase=preserve origin "${branch}"
}

function push {
    local branch="${1:-$(__get_current_branch)}"

    git push origin "${branch}"
}

function push-pull {
    local branch="$(__get_current_branch)"
    local count=1

    if ! git diff-index --quiet HEAD; then
        echo "Error: you have unstaged changes."
        return 1
    fi

    until [[ ! $? ]]; do
        pull "${branch}"
        push "${branch}"
        ((count++))
    done

    if [[ "${count}" -gt 1 ]]; then
        echo "Successfully pushed after ${count} attempts."
    fi
}
