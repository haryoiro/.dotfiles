# -----------------------------
# cd -> ls(exa)
# -----------------------------
function cd -d "Automatically do an ls after each cd"
  # 引数がなければ終了
  if test (count $argv) -eq 0
    return 1

  # 引数が一つならcdを実行
  else if test (count $argv) -eq 1

    # cdに引数を渡し実行
    builtin cd $argv

    # cdが正常動作しなければ終了
    if test $status -ne 0
      return 1
    end

    # cdが正常動作したらディレクトリを表示
    exa -a
    return $status
  end # argv = 1
end # function
