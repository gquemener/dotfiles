PATH="./node_modules/.bin/:./bin:./vendor/bin:$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.rvm/bin:$PATH"

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=10000
HISTFILESIZE=10000

shopt -s histappend
shopt -s checkwinsize

export PROMPT_COMMAND='history -a'
export EDITOR=vim
export PAGER=less
export BROWSER=firefox
export LANG=en_US.UTF-8

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

parse_git_branch() {
  if [ -d ".git" ]; then
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
  fi
}
parse_git_commit() {
    if [ -d ".git" ]; then
        git log -1 --oneline 2> /dev/null | awk '{print substr($1,0,10)}'
    fi
}

export PS1="\n\\[$(tput setab 0) $(tput bold)$(tput setaf 6)\\]\A \\[$(tput setaf 2)\\]\$(parse_git_branch)/\$(parse_git_commit)\\[$(tput setaf 6)\\] \\u@\\h:\\w \$ \\[$(tput sgr0)\\]\n ↳ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

setxkbmap -layout fr

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
