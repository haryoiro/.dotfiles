# -----------------------------
# useful mkdir
# https://fishshell.com/docs/current/cmds/function.html
# -----------------------------
function mkdir -d "Creation a directory and set CWD"
  command mkdir $argv
  if test $status = 0
    switch $argv[(count $argv)]
      case '-*'

      case '*'
        cd $argv[(count $argv)]
        return
    end
  end
end