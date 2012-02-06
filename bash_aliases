# some more ls aliases
alias l='ls -Al'
alias ll='ls -l'
alias la='ls -a'    #show hidden files
alias lx='ls -lXB'  #sort by extension
alias lk='ls -lSr'  #sort by size, biggest last

#git aliases
alias g='git'
alias s='git status'
alias g='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gco='git checkout'

#some more aliases :)
alias md='mkdir -p'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$HOME/local/bin:$PATH

alias sf="./app/console"
alias sft="./app/console --env=test"
alias sfb="./app/console --env=test behat"
alias sfu="phpunit -c app"

alias psf="find -name *.swp -print && find -name *.*~ -print"
alias csf="find -name *.swp -print -delete && find -name *.*~ -print -delete"
