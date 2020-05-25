# -----------------------------
# shortcut of command 'git add .'
# -----------------------------
function ga
  if test (count $argv) -ne 0
    return 1
  else
    command git add .
    return $status
  end
end