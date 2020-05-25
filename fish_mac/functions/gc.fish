# -----------------------------
# shortcut of command 'git commit -m'
# -----------------------------
function gc
  if test (count $argv) -eq 0
    echo 'A comment is required.'
    return 1
  # 引数が一つでコミット
  else if test (count $argv) -eq 1
    command git commit -m $argv
  end
end