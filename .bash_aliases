alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias update='sudo apt update'
alias upd='sudo apt update'
alias upgrade='sudo apt upgrade'
alias upg='sudo apt upgrade'
alias search='apt-cache search'
alias autoremove='sudo apt autoremove'
alias autoclean='sudo apt autoclean'
alias purge='sudo apt remove –purge'
alias install='sudo apt install'
alias remove='sudo apt remove'
alias got='git'
alias get='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gf='git fetch'
alias gh='git hist'
alias gi='git init'
alias gk='gitk --all&'
alias gm='git merge'
alias go='git checkout'
alias gp='git push'
alias gr='git remote'
alias gs='git st'
alias gx='gitx --all'
alias x='exit'
alias reboot='sudo reboot'
alias bs='browser-sync start --server --no-notify --files'
alias bso='browser-sync start -b opera --server --no-notify --files'
alias pug='pug --pretty -w'
alias xclip='xclip -selection c'
alias clip='xclip -selection c'
alias cls='clear'
alias ?='which'
alias opera='opera -private'
alias Google='lynx http://www.google.com/'
alias rkhunter-run='sudo rkhunter -c --enable all --disable none'
alias rkhunter-run-warning='rkhunter -c --enable all --disable none --rwo'
alias py='subl -w ~/python.py & '

config-upd() {
    location=`pwd`

    cd ~

    git add .
    if [[ ! $# -eq 0 ]]; then
        git commit -m "$*"
    else
        git commit -m 'update'
    fi
    git push origin master

    cd "$location"
}

config-status() {
    location=`pwd`
    cd ~

    git status
    git diff

    cd "$location"
}

# get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
        STAT=`parse_git_dirty`
        echo "[${BRANCH}${STAT}]"
    else
        echo ""
    fi
}

# get current status of git repo
function parse_git_dirty {
    status=`git status 2>&1 | tee`
    dirty=`echo -n "${status}" 2> /dev/null | grep "изменено:" &> /dev/null; echo "$?"`
    untracked=`echo -n "${status}" 2> /dev/null | grep "Неотслеживаемые файлы:" &> /dev/null; echo "$?"`
    ahead=`echo -n "${status}" 2> /dev/null | grep "Ваша ветка опережает" &> /dev/null; echo "$?"`
    newfile=`echo -n "${status}" 2> /dev/null | grep "новый файл:" &> /dev/null; echo "$?"`
    renamed=`echo -n "${status}" 2> /dev/null | grep "переименовано:" &> /dev/null; echo "$?"`
    deleted=`echo -n "${status}" 2> /dev/null | grep "удалено:" &> /dev/null; echo "$?"`
    bits=''
    if [ "${renamed}" == "0" ]; then
        bits=">${bits}"
    fi
    if [ "${ahead}" == "0" ]; then
        bits="*${bits}"
    fi
    if [ "${newfile}" == "0" ]; then
        bits="+${bits}"
    fi
    if [ "${untracked}" == "0" ]; then
        bits="?${bits}"
    fi
    if [ "${deleted}" == "0" ]; then
        bits="x${bits}"
    fi
    if [ "${dirty}" == "0" ]; then
        bits="!${bits}"
    fi
    if [ ! "${bits}" == "" ]; then
        echo " ${bits}"
    else
        echo ""
    fi
}

function parse_jobs() {
    RUN_JOBS=$(jobs | wc -l)
    
    if [ ! "${RUN_JOBS}" == "0" ]; then
        echo " (${RUN_JOBS})"
    else
        echo ""
    fi
}

if [ ! `whoami` == 'root' ]; then
    export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]\[\e[1;31m\]\$(parse_jobs)\[\033[00m\]:\[\033[01;34m\]\w \[\033[38;05;223m\]\$(parse_git_branch)\n\\[\033[00m\]\$\[$(tput sgr0)\] "
else
    export PS1="\[\e[1;31m\][\u@\h \W]\n\\$\[$(tput sgr0)\] "
fi

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

if [ -f ~/.bash_newproj ]; then
    . ~/.bash_newproj
fi
