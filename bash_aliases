# some more ls aliases
alias l='ls -lh --color'
alias ll='ls -lha --color'

#git aliases
alias g='git'
alias s='git status -uall'
alias gpl='git pull'
alias gpr='git pull --rebase'
alias gph='git push'
alias gd='git diff'
alias gco='git checkout'
alias gc='git commit'
alias clean-branches='git branch --merged | grep -v master | xargs git branch -d'

#some more aliases :)
alias md='mkdir -p'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias tsf="teamocil --here sf"

alias sf="./app/console"
alias sft="phpspec run -fpretty"
alias sfb="behat --no-paths"
alias sfu="phpunit -c app"
alias sfs="clear && php -S localhost:8000 -t web/"

alias v="gvim 2>/dev/null"

#apt-get aliases
alias apti="sudo apt-get install"
alias apts="sudo apt-cache search"
alias aptu="sudo apt-get update && sudo apt-get upgrade"

#composer aliases
alias compi="composer.phar install --dev --prefer-dist"
alias compu="composer.phar update --dev --prefer-dist"

alias x-on="sudo sed -i -e 's/^;\+//' /etc/php5/conf.d/20-xdebug.ini"
alias x-off="sudo sed -i -e 's/^/;/' /etc/php5/conf.d/20-xdebug.ini"

alias phpfix="git diff --name-only --cached | xargs -n 1 php ~/.local/bin/php-cs-fixer.phar fix"
