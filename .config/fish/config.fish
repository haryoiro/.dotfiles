
set fish_greeting ""

set fish_color_normal       normal
set fish_color_command      blue
set fish_color_quote        yellow
set fish_color_end          black
set fish_color_error        red
set fish_color_param        normal -bold
set fish_color_comment      black
set fish_color_match        green
set fish_color_search_match yellow
set fish_color_operator     yellow
set fish_color_escape       brown

if not set -q fish_abbreviations_set
  abbr_set
end

set -g __fish_git_prompt_color_branch magenta
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_cleanstate green
