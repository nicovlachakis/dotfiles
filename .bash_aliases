# command aliases

alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -CF'
alias dd='dd status=progress'
alias _='sudo'
alias _i='sudo -i'

alias please='sudo'
alias fucking='sudo'
alias ffs='sudo !!'

alias tothelab="cd /mnt/c/Users/Gregory/Desktop/projects"

# prompt
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[01;96m\]\A\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$ \[\e[0m\]"
    ;;
*)
    ;;
esac
