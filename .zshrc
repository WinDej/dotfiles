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

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


# Aliases
alias cls='clear'
alias ls='ls --color'
alias la='ls -a'
alias ll='ls -al'
alias ip='ifconfig | grep broadcast'
alias cl='clear'
alias kernel='apacman -Qi linux'
alias vbs='ssh pawel@vbserver'

# Git aliases
alias gs="git status"
alias gd="git diff"
alias ga="git add "
alias gc="git commit -m "
alias gp="git push "

