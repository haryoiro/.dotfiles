
# -----------------------------
# Cutie Cat greeting
# -----------------------------
function fish_greeting
    set_color -o --bold white
    echo -ne "\e[1m  ================================================= \n"
    echo -ne "\e[1m |                                 "
    date "+DATE: %D    |"
    echo -ne "\e[1m |   =^._.^=  Welcome to fish                        |\n"
    echo -ne "\e[1m |                                 "
    date "+TIME: %T    |"
    echo -ne "\e[1m  ================================================= \r"
    echo -ne "\e[1m"
    echo -ne "\r\e[1m  =====\e[34m\e[0m"
    echo -ne "\n\r └─> \e[1m"
    pwd
    echo -ne "\r\n "
    exa -s type --git-ignore --blocks --icons -a -G
    echo -ne "                                                 \n"
    echo -ne "  ================================================= \n\n"
    echo -ne "\e[1m"
end
