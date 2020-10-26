# Custom Aliases

# Code Editors
alias at="atom ."
alias vc="code ."

# Docker
alias dco="docker container"
alias dcoexec="docker container exec"
alias dcols="docker container ls -a"
alias dcolog="docker container logs"
alias dcorm="docker container rm -f"
alias dcorun="docker container run"
alias dim="docker image"
alias dimrm="docker image rm -f"
alias dims="docker images"
alias dne="docker network"
# alias dcrp="function _dcrp(){ CURRENT_PLATFORM=$1 dcr $2;};_dcrp"

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
alias yi="yarn init"
alias ypr="yarn prune"
alias yw="yarn why"

# ZSH
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"
