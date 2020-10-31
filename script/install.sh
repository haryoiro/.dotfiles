#!/bin/bash -e

#########
## WIP ##
#########

############################################
##          __      __  _____ __          ##
##     ____/ /___  / /_/ __(_) /__  _____ ##
##    / __  / __ \/ __/ /_/ / / _ \/ ___/ ##
##  _/ /_/ / /_/ / /_/ __/ / /  __(__  )  ##
## (_)__,_/\____/\__/_/ /_/_/\___/____/   ##
############################################


e_success() {
    printf " \033[37;1m%s\033[m%s...\033[32mOK\033[m\n" "✔ " "$*"
}
e_error() {
    printf " \033[31m%s\033[m\n" "✖ $*" 1>&2
}
e_done() {
    printf " \033[37;1m%s\033[m...\033[32mOK\033[m\n" "✔ $*"
}
e_question() {
    printf "\e[0;33m[?] $1\e[0m"
}

answer_is_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] \
        && return 0 \
        || return 1
}

yes_or_no_prompt() {
    e_question "$1"
    read -n 1
    printf "\n"
}

check_os() {
    declare -r OS_NAME="$(uname -s)"
    local os=""

    if [ "$OS_NAME" == "Darwin" ]; then
        os="osx"
    elif [ "$OS_NAME" == "Linux" ] && [ -e "/etc/lsb-release" ]; then
        if lsb_release -a | grep "Manjaro" >/dev/null; then
            os="manjaro"
        elif lsb_release -a | grep "Ubuntu" >/dev/null; then
            os="ubuntu"
        fi
    fi

    printf "%s" "$os"
}

# finds all .dotfiles in this folder
declare -a FILES_TO_SYMLINK=$(find . -type f -maxdepth 1 -name ".*" -not -name .DS_Store -not -name .git -not -name .osx | sed -e 's|//|/|' | sed -e 's|./.|.|')
FILES_TO_SYMLINK="$FILES_TO_SYMLINK .config/alacritty .config/fish .config/kitty"

main() {
    local i=""
    local sourceFile=""
    local targetFile=""
    cd $HOME/.dotfiles

    for i in ${FILES_TO_SYMLINK[@]}; do
        sourceFile="$(pwd)/$i"
        targetFile="$HOME/$i"
       
        # インストール先にファイルがある場合は上書きするか確認
        if [ -e "$targetFile" ]; then
            # インストール先のリンクがソースと関連付けられている場合
            if [ "$(readlink "$targetFile")" != "$sourceFile" ]; then
                yes_or_no_prompt "$targetFile is already exists. do  you want to overwrite it? [y/N]: "
                
                if answer_is_yes; then
                    echo $targetFile
                    exec $(sudo rm -rf $targetFile)
                    exec $(sudo ln -fs $sourceFile $targetFile)
                else
                    echo "linking $targetFile → $sourceFile"
                fi
            else
                exec $(sudo ln -fs $sourceFile $targetFile)
                echo "linking  $targetFile → $sourceFile"
            fi
        else
            exec $(ln -fs $sourceFile $targetFile)
            echo "linking $targetFile → $sourceFile"
        fi
    done
}

main
