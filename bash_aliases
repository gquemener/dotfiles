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

alias sf="./bin/console"
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
alias compi="composer.phar install --prefer-dist"
alias compu="composer.phar update --prefer-dist"

alias x-on="sudo sed -i -e 's/^;\+//' /etc/php/conf.d/xdebug.ini"
alias x-off="sudo sed -i -e 's/^/;/' /etc/php/conf.d/xdebug.ini"

alias phpfix="git diff --name-only --cached | xargs -n 1 /home/gildas/.composer/vendor/bin/php-cs-fixer fix"

alias cucumber="./node_modules/.bin/gulp test --file"

alias myip="curl http://ipecho.net/plain ; echo"

alias dc="docker-compose"
alias dcl="docker-compose logs"
alias dcp="docker-compose ps"
alias dcu="docker-compose up -d && update-docker-hosts"
alias dcux="docker-compose --x-networking up -d"
alias dcu-nd="docker-compose up -d --no-deps"
alias dcu-nr="docker-compose up -d --no-recreate"
alias dcr="docker-compose run --rm"
alias de="docker exec -it"
alias drm="docker ps -qa | xargs docker rm -fv"
alias drmi="docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')"
alias dm="docker-machine"
alias de="env | grep DOCKER_"

alias tmf='tmux attach -t $(basename $(pwd)) || tmux new -s $(basename $(pwd)) tmux source-file .tmux.conf'
