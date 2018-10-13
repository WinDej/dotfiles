#
# ~/.bashrc
#

# Android path
export PATH=${PATH}:~/android-sdk-linux/platform-tools

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

# Promnt Settings
#export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[00;36m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;36m\]\h\[\e[0m\]\[\e[00;37m\]] \W \[\e[0m\]\[\e[00;36m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

function _update_ps1() {
   PS1="$(/home/pawel/.powerline-shell/powerline-shell.py --colorize-hostname --cwd-max-depth 2 $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
   PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
