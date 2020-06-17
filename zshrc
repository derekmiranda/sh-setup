# zsh settings
setopt +o nomatch

export NVM_DIR=~/.nvm
export NPM_TOKEN=37f0be0d-88e1-4f31-bd2a-1c3684ce6fa9
source ~/.nvm/nvm.sh

# run zsh setup
source ~/.zsh/aliases
# source ~/.zsh/local_aliases
source ~/.zsh/config
source ~/.zsh/show_git

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

autoload -Uz compinit
autoload -Uz vcs_info

fpath=(~/.zsh $fpath)

