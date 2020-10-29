function abbr_set --description 'set abbreviations'
  echo "setting fish abbreviations"
  # first erase all existing abbreviations
  for ab in (abbr --list)
    abbr --erase "$ab"
  end

  # then source current abbreviations
  source "$HOME/.config/fish/abbreviations.fish"
  set -U fish_abbreviations_set true
end

# Aliases
# https://github.com/sharkdp/bat
if available bat
  alias cat='bat'
end
# https://github.com/ogham/exa
if available exa
  alias ls='exa'
  alias l='exa -l'
  alias la='exa -la'
end
# https://github.com/sharkdp/fd
if available fd
  alias find='fd'
end