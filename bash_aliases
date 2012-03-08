# some more ls aliases
alias l='ls -Al --color'
alias ll='ls -l --color'
alias la='ls -a --color'    #show hidden files
alias lx='ls -lXB --color'  #sort by extension
alias lk='ls -lSr --color'  #sort by size, biggest last

#git aliases
alias g='git'
alias s='git status -uall'
alias g='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gco='git checkout'

#some more aliases :)
alias md='mkdir -p'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias sf="./app/console"
alias sft="./app/console --env=test"
alias sfb="./app/console --env=test behat"
alias sfu="phpunit -c app"

alias steam="WINEDEBUG=-all wine64 /media/DATA/Program\ Files/Steam/Steam.exe > /dev/null 2>&1 &"

alias v="gvim"

export PATH=$HOME/local/bin:$PATH
