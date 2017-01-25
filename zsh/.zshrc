# Path to oh-my-zsh installation.
export ZSH=/Users/lakshay/.oh-my-zsh

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Time period to update zsh
export UPDATE_ZSH_DAYS=10

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

source $ZSH/oh-my-zsh.sh

# ~(0.0)~ ALIASES 
alias pypi="python setup.py sdist upload"
alias ..="cd .."
alias c="clear"
alias rm="rm -i"
alias myip="curl icanhazip.com"
alias restart="source ~/.zshrc"
alias gpom="git push origin master"
alias wisdom="fortune | cowsay"

# Get weather info
weather(){ curl wttr.in/"$1"; }

# Python work environments
workenv3 () {
    dir=$(pwd);
    cd ~/Desktop/environments/python3;
    source bin/activate;
    cd $dir; 
}

workenv2 () {
    dir=$(pwd);
    cd ~/Desktop/environments/python2;
    source bin/activate;
    cd $dir; 
}

# Open browsers
chrome () {
	open -a "Google Chrome" "https://www.$1"
}

safari () {
	open -a "Safari" "https://www.$1"
}


# Syntax highlighting
source /Users/lakshay/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

