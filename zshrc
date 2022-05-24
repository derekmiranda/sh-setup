# /sh-setup/zsh settings
setopt +o nomatch
setopt extended_glob

# Set Git editor to Vim
export GIT_EDITOR=vim

# run zsh setup
source ~/sh-setup/zsh/aliases
# source ~/sh-setup/zsh/local_aliases
# source ~/sh-setup/zsh/config
# source ~/sh-setup/zsh/show_git

# Set prompt
autoload -Uz vcs_info
function precmd() { vcs_info }
setopt prompt_subst
NEWLINE=$'\n'
# PROMPT='${NEWLINE}${vcs_info_msg_0_}%{%B%}${NEWLINE}%(!.#.>)%{%b%E%} '
PROMPT='${NEWLINE}%(?.%F{green}√.%F{red}?%?)%f %B%2~%f%b ${vcs_info_msg_0_} ${NEWLINE}> '
# End of lines for vcs_info prompt configuration

zstyle ':vcs_info:git:*' formats '(%b)%f'
zstyle ':vcs_info:*' enable git
zstyle ':completion:*:*:git:*' script /sh-setup/zsh/git-completion.zsh
fpath=(~/sh-setup/zsh $fpath)

autoload -Uz compinit
autoload -Uz vcs_info

fpath=(/sh-setup/zsh $fpath)

