
set fish_greeting ""

if not set -q fish_abbreviations_set
  abbr_set
end

# Aliases
# https://github.com/sharkdp/bat
if available bat
  alias cat='bat'
end
# https://github.com/ogham/exa
if available exa
  alias ls='exa -a'
  alias l='exa -l'
  alias la='exa -la'
end
# https://github.com/sharkdp/fd
if available fd
  alias find='fd'
end
