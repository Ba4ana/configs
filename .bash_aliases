alias update='sudo apt update'
alias upd='sudo apt update'
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
alias docker='sudo docker'
alias pug='pug --pretty -w'
alias xclip='xclip -selection c'
alias clip='xclip -selection c'
alias cls='clear'
alias ?='which'
alias opera='opera -private'
alias Google='lynx http://www.google.com/'
alias rkhunter-run='sudo rkhunter -c --enable all --disable none'
alias rkhunter-run-warning='rkhunter -c --enable all --disable none --rwo'

upgrade() {
    sudo apt upgrade
    dpkg -l | grep ^ii | awk '{ print $2}' > Документы/myPackagesList.txt

    # sudo dpkg --clear-selections
    # sudo dpkg --set-selections < mylist.txt
    # sudo apt dselect-upgrade
    # or
    # xargs < mylist.txt apt install -y
}

upg() {
    upgrade
}

config-upd() {
    cd ~
    git add .
    if [[ ! $# -eq 0 ]]; then
        git commit -m "$*"
    else
        git commit -m 'update'
    fi
    git push origin master
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

if [ ! `whoami` == 'root' ]; then
    export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \[\033[38;05;223m\]\$(parse_git_branch)\[\033[00m\]\n\\$\[$(tput sgr0)\] "
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

newproj() {
    if [[ ! -z $templatesLocation ]]; then
        targetLocation="`pwd`/"

        if [[ ! $# -eq 0 ]]; then
            installedTemplates=0
            while [[ -n "$1" ]]; do

                keys=$(echo $1 | grep ^-)
                params=$(echo $keys | grep ^--)

                if [[ ! -n $keys ]]; then                                           # Если аргумент (имя шаблона)
                    if [[ ! $installedTemplates -eq 1 ]]; then
                        if [[ -d "$templatesLocation" ]]; then
                            cd "$templatesLocation"

                            if [[ -d "$1" ]]; then
                                cd "$1"
                                cp -rpu ./. "$targetLocation"
                                installedTemplates=1
                                echo 'Шаблон "'$1'" успешно установлен'
                            else
                                installedTemplates=0
                                echo 'Шаблон "'$1'" не найден'
                            fi

                            cd "$targetLocation"
                        else
                            echo 'Папка с шаблонами не найдена!'
                            echo 'Запустите в командной строке:'
                            echo 'gedit ~/.bashrc'
                            echo 'Перепишите значение переменной templatesLocation.'
                        fi
                    else
                        echo 'Можно устанавливать только 1 шаблон'
                    fi
                else
                    if [[ ! -n $params ]]; then                                     # Если ключ
                        if [[ -n $(echo $keys | grep i) ]]; then
                            npm install
                        fi
                        if [[ -n $(echo $keys | grep g) ]]; then
                            if [[ ! $git == 'commit' ]]; then
                                git='init'
                            fi
                        fi
                    else                                                            # Если параметр
                        if [[ -n $(echo $params | grep '\--b-.*') ]]; then
                            bower install $(echo $params | sed 's/--b-//')
                        elif [[ -n $(echo $params | grep '\--git-init') ]]; then
                            git='commit'
                        elif [[ -n $(echo $params | grep '\--help') ]]; then
                            newproj-help
                        else
                            echo 'Параметр "'$1'" не найден'
                            newproj-help
                        fi
                    fi
                fi

                shift
            done
        else
            newproj-help
        fi
    else
        echo 'Переменная templatesLocation не найдена!'
        echo 'Перейдите в вашу папку с шаблонами и запустите команду:'
        echo 'echo export templatesLocation=\"$(pwd)\" >> ~/.bashrc'
        newproj-help
    fi

    if [[ $git == 'init' ]]; then
        git init
    elif [[ $git == 'commit' ]]; then
        git init
        git add .
        git commit -m 'initial commit'
    fi
}

newproj-help() {
    echo 'Использование: newproj [ИМЯ ПАПКИ С ШАБЛОНОМ] -[КЛЮЧИ] --[ПАРАМЕТРЫ]

       Пример:                   $ newproj pug -ig --b-bootstrap --git-init

        Ключи:
               -g              : $ git init
               -i              : $ npm install
    Параметры:
              --b-<имя пакета> : Устанавливает пакет <имя пакета> из репозитория Bower. Выполняет команду:
                                 $ bower install <имя пакета>
              --git-init       : Инициализирует репозиторий. Выполняет команды:
                                 $ git init
                                 $ git add .
                                 $ git commit -m "initial commit"'
}
