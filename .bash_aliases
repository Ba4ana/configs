alias update='sudo apt update'
alias upd='update'
alias upgrade='sudo apt upgrade'
alias upg='upgrade'
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
alias gs='git st'
alias gx='gitx --all'
alias x='exit'
alias reboot='sudo reboot'
alias bs='browser-sync start --server --no-notify --files'
alias bso='browser-sync start -b opera --server --no-notify --files'
alias docker='sudo docker'
alias pug='pug --pretty -w'
alias xclip='xclip -selection c'
alias clip='xclip'
alias cls='clear'
alias ?='which'
alias opera='opera -private'
alias Google='lynx http://www.google.com/'
alias rkhunter-run='sudo rkhunter -c --enable all --disable none'
alias rkhunter-run-warning='rkhunter -c --enable all --disable none --rwo'


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

hello() {
    echo World
}