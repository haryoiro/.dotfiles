#!/bin/bash -e

#########
## WIP ##
#########

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
FILES_TO_SYMLINK="$FILES_TO_SYMLINK .config/fish .config/kitty .config/alacritty"

main() {
    local i=""
    local sourceFile=""
    local targetFile=""

    for i in ${FILES_TO_SYMLINK[@]}; do
        sourceFile="$(pwd)/$i"
        targetFile="$HOME/$i"

        echo $sourceFile
        echo $targetFile

        # インストール先にファイルがない場合はコピー
        if [ -e "$targetFile" ]; then
            if [ "$(readlink "$targetFile")" != "$sourceFile" ]; then
                echo "ok"
            fi
        else
            echo "dont"
        fi
    done
}

main