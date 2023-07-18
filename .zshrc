# Set up command alias
alias tf='terraform'
alias k='kubectl'
alias ls='ls -G'
alias ll='ls -al'


# Load version control information
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '[git:%b]'
precmd() { vcs_info }

fpath=($fpath ~/.zsh/completion)

# Prompt Layout
setopt PROMPT_SUBST
export PROMPT='%n@%m:%F{green}%~%f$ '
export RPROMPT='%F{blue}${vc_info_msg_0_}%f'
export EDITOR=nvim
export VISUAL="$EDITOR"
