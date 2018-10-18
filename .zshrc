# Path to your oh-my-zsh installation.
  export ZSH="/home/pawel/.oh-my-zsh"

# ZSH theme
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Plugins
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

