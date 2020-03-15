# Custom Aliases

# Code Editors
alias at='atom .'
alias vc='code .'

# Docker
alias dc="docker-compose"
alias dcb="docker-compose build"
alias dcr="docker-compose run --rm web"
alias dcu="docker-compose up web"
alias dcup="function _dcup(){ CURRENT_PLATFORM=$1 docker-compose up web; };_dcup"

# Git
alias gbdam='git branch | grep -v "master" | xargs git branch -D'
alias gbdad='git branch | grep -v "develop" | xargs git branch -D'
alias gbc="gcm; gbdam; gfa; gpr; gl"
alias gbcn="git branch | grep \* | cut -d ' ' -f2"
alias gce="git commit --allow-empty -m"
alias gpr="git prune"


# Server
alias killport='lsof -ti tcp:$1 | xargs kill -9'


# SP
alias ft='rm -rf tmp/ clients/*/tmp'
alias fn='rm -rf node_modules/ clients/*/node_modules'

# Yarn
alias yac="yarn autoclean"
alias yc="yarn create"
alias yalh='yarn audit --level high'
alias yga="yarn global add"
alias ygr="yarn global remove"
alias yi="yarn init"
alias ypr="yarn prune"
alias yui="yarn upgrade-interactive --latest"
alias yw="yarn why"

# ZSH
alias zshconfig='vim ~/.zshrc'
