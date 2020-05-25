# -----------------------------
# shortcut of command 'git add && commit && push'
# -----------------------------
function gal
  if test (count $argv) -eq 0
    echo "comment is required"
    return 1

  else if test (count $argv) -eq 1
    command git add .
    if test $status -ne 0
      echo 'rejected at add'
      return 1
    end

    command git commit -m $argv
    if test $status -ne 0
      echo 'rejected at commit'
      return 1
    end

    command git push
    if test $status -ne 0
      echo 'rejected at push'
      return 1
    end
  end
end