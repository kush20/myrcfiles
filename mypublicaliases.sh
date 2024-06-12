export BLUE='\033[0;33m'
export RED='\033[0;31m'
export LIGHT_GREEN='\033[0;32m'
export NC='\033[0m'
export YELLOW='\033[0;36m'


shopt -s histappend                      # append to history, don't overwrite it


function info { 
  echo -e ${LIGHT_GREEN} $@ $NC
}

function error { 
  echo -e ${RED} $@ $NC
}

function highlight { 
  echo -e ${YELLOW} $@ $NC
}

function hl { 
  highlight $@
}

# GIT Aliases
alias gss='git status -s'

function gg {
  cd `git rev-parse --show-toplevel`
}

# aliases for refreshing aliases 
alias brc='source ~/.bashrc'
alias updatebrc='source ~/.bashrc'
alias upbrc='source ~/.bashrc'
alias refreshbrc='source ~/.bashrc'
alias refbrc='source ~/.bashrc'
alias sbrc='source ~/.bashrc'

# mru reverse order 
function mrur { 
ls -ltRr | head -n 10
}

function mru20 { 
ls -lt | head -n 20
}

alias lr="ls -lhtr"
alias mru="ls -lhtr | tail -n 5"
alias mru10="ls -lhtr | tail -n 10"
alias mru20="ls -lhtr | tail -n 20"
alias vime="vim"
