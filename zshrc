# /sh-setup/zsh settings
setopt +o nomatch
setopt extended_glob

# Set Git editor to Vim
export GIT_EDITOR=vim

# run zsh setup
source ~/sh-setup/zsh/aliases
source ~/sh-setup/zsh/local_aliases
source ~/sh-setup/zsh/config
source ~/sh-setup/zsh/show_git

# Set prompt
autoload -Uz vcs_info
function precmd() { vcs_info }
setopt prompt_subst
NEWLINE=$'\n'
PROMPT='${NEWLINE}${vcs_info_msg_0_}%{%B%}${NEWLINE}%(!.#.>)%{%b%E%} '
# PROMPT='%(?..%{%F{red}%}%?%{%f%} )%{%F{green}%}%n%{%f%}@%{%F{red}%}%m%{%f%}:${vcs_info_msg_0_}%{%B%}%(!.#.>)%{%b%E%} '
# End of lines for vcs_info prompt configuration

zstyle ':completion:*:*:git:*' script /sh-setup/zsh/git-completion.bash
fpath=(~/sh-setup/zsh $fpath)

autoload -Uz compinit
autoload -Uz vcs_info

fpath=(/sh-setup/zsh $fpath)

