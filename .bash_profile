export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1='\u@\h:\w\$ '
export EDITOR='vim'
export CLICOLOR=1

eval "$(/opt/homebrew/bin/brew shellenv)"

. "$HOME/.cargo/env"
