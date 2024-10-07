if not status is-interactive
  return
end


# path
fish_add_path ~/.bin
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin


# sudo alias
function s
  if count $argv > /dev/null
    sudo $argv
  else
    sudo (history | head -n1 | string split " ")
  end
end


# for running gui apps from the terminal
function run
  $argv > /dev/null 2>&1 &
  disown
end


# for retrying a command until it succeeds
function retry
  $argv || retry $argv
end


# aliases
alias ls='eza --icons=always -xlh --group-directories-first --no-permissions --no-user --no-time'
alias reload='clear; exec fish'
alias grep='grep --color'
alias vim='nvim'
alias nm='nmtui'
alias cat='bat'
alias p='ping'
alias n='node'


# abbreviations
abbr -a 'c' 'clear'
abbr -a 'cd..' 'cd ..'


# shell integrations
zoxide init fish --cmd cd | source


# prompt
oh-my-posh init fish --config ~/.config/ohmyposh/zen.toml | source
