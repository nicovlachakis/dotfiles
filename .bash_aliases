## command aliases

alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -CF'
alias dd='dd status=progress'
alias _='sudo'
alias _i='sudo -i'

alias please='sudo'
alias fucking='sudo'
alias ffs='sudo !!'

alias tothelab="cd /mnt/c/Users/Gregory/Desktop/Projects"

## env vars
# disable ps1 change by python venv
export ANSIBLE_NOCOWS=1
export VIRTUAL_ENV_DISABLE_PROMPT=1

# colors
RESET="\[\017\]"
NORMAL="\[\033[0m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[33;1m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[01;96m\]"
WHITE="\[\033[0;39m\]"

#characters
PROMPT_START="\342\224\214\342\224\200"
PROMPT_START_NEWLINE="\342\224\224\342\224\200\342\225\274"
PROMPT_DIVIDER="\342\224\200"

#trim \w in PS1 to specific length
PROMPT_DIRTRIM=3

## functions
# get venv
get_virtualenv(){
    echo $VIRTUAL_ENV | sed -e 's/^.*\///' -e 's/-.*//'
}

get_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

export PS1="${RESET}${RED}${PROMPT_START}[${WHITE}\u${YELLOW}@${BLUE}\h${RED}]${PROMPT_DIVIDER}[${BLUE}\A${RED}]${PROMPT_DIVIDER}[${GREEN}\w${RED}]\$(if [ \$(get_git_branch) ]; then echo '${PROMPT_DIVIDER}[${YELLOW}'\$(get_git_branch)'${RED}]'; fi)\n${RED}${PROMPT_START_NEWLINE}\$(if [ \$(get_virtualenv) ]; then echo '${GREEN} (venv:'\$(get_virtualenv)')'; fi) ${YELLOW}\$${NORMAL} "
