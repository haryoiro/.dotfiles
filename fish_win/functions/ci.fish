# -----------------------------
# "code-insiders.exe" on WSL Shortcut
# -----------------------------
function ci
    /mnt/c/Users/<name>/AppData/Local/Programs/'Microsoft VS Code Insiders'/bin/code-insiders $argv >/dev/null 2>&1 &
end
