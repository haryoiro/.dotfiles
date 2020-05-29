# -----------------------------
# kitty cat greeting
# -----------------------------
function fish_greeting
    set_color -o --bold white
    echo "================================================="
    echo "                                                 "
    echo "           =^._.^=  Welcome to fish              "
    echo "                                                 "
    pwd
    exa
    echo "                                                 "
    echo "================================================="
    set_color normal
end
