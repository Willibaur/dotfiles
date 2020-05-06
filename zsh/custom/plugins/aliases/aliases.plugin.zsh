# Custom Aliases

# Code Editors
alias at="atom ."
alias vc="code ."

# Docker
alias dc="docker-compose"
alias dcb="docker-compose build"
alias dcr="docker-compose run --rm web"
alias dcu="docker-compose up web"
alias dcbp="function _dcbp(){ CURRENT_PLATFORM=$1 dcb; };_dcbp"
alias dcrp="function _dcrp(){ CURRENT_PLATFORM=$1 dcr $2;};_dcrp"
alias dcup="function _dcup(){ CURRENT_PLATFORM=$1 dcu; };_dcup"

# Dash terminal
alias dajs="function _dajs(){ open dash://javascript:{$1}; };_dajs"
alias dahtml="function _dahtml(){ open dash://html:{$1}; };_dahtml"

# Git
alias gbdac="git branch | grep -v '^*' | xargs git branch -D"
alias gbc="gcm; gbdac; gfa; gpr; gl"
alias gbcn="git branch | grep \* | cut -d ' ' -f2"
alias gce="git commit --allow-empty -m"
alias gfdf="git log --all -- **/"
alias gpr="git prune"

# Server
alias sk="function _sk(){ lsof -ti tcp:$1 | xargs kill -9; };_sk"

# Work
alias ft="rm -rf tmp/ clients/*/tmp"
alias fn="rm -rf node_modules/ clients/*/node_modules"

# Yarn
alias yac="yarn autoclean"
alias yc="yarn create"
alias yalh="yarn audit --level high"
alias yga="yarn global add"
alias ygr="yarn global remove"
alias yi="yarn init"
alias ypr="yarn prune"
alias yui="yarn upgrade-interactive --latest"
alias yw="yarn why"

# ZSH
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
