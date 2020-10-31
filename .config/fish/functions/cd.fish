function cd --description 'execute ls after run cd command'
    builtin cd $argv
    if test $status -eq 0
		command pwd
        command exa -a
		return 0
    else
        return 1
	end
end