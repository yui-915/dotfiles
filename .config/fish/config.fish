if not status is-interactive
  return
end


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
alias c='clear'
alias p='ping'
alias n='node'


# abbreviations
# ...

# shell integrations
zoxide init fish --cmd cd | source

# prompt (starship)
function starship_transient_prompt_func
  starship module character
end
starship init fish | source
enable_transience
