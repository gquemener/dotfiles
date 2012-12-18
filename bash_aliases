# some more ls aliases
alias l='ls -Al --color'
alias ll='ls -lhaS --color'
alias la='ls -a --color'    #show hidden files
alias lx='ls -lXB --color'  #sort by extension
alias lk='ls -lSr --color'  #sort by size, biggest last

#git aliases
alias g='git'
alias s='git status -uall'
alias gpl='git pull'
alias gpr='git pull --rebase'
alias gph='git push'
alias gd='git diff'
alias gco='git checkout'
alias gc='git commit'

#some more aliases :)
alias md='mkdir -p'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias tsf="teamocil --here sf"

alias sf="./app/console"
alias sft="./bin/phpspec run -fpretty"
alias sfb="./bin/behat --no-paths"
alias sfu="phpunit -c app"
alias sfs="clear && php -S localhost:8000 -t web/"

alias uv="UBUNTU_MENUPROXY= gvim"
alias v="gvim"
