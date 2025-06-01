# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# My custom paths
export PATH="/usr/local/bin:$PATH"
# Created by `pipx` on 2024-04-18 20:10:14
export PATH="$PATH:/Users/polyrom/.local/bin"
# nvm (node.js and npm handler)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/go/bin
export GOPATH=$PATH:/usr/local/go/bin

# oh-my-posh
eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/themes/catppuccin-mocha.omp.json)"
# mise
eval "$(~/.local/bin/mise activate zsh)"
# thefuck
eval $(thefuck --alias)
# docker
export PATH=$PATH:$HOME/.docker/bin
# rust
export PATH=$PATH:$HOME/.cargo/env.fish

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="amuse"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time


# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  # git
  # vi-mode
  virtualenv
  python
  web-search
  tmux
  zsh-syntax-highlighting
  # zsh-autosuggestions
  z
  )

source $ZSH/oh-my-zsh.sh

# aliases
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias lgit=lazygit
