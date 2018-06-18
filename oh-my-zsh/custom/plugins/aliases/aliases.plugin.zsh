# Custom Aliases

# Atom
alias at='atom .'

# Git
alias gbdam='git branch | grep -v "master" | xargs git branch -D'
alias gbdad='git branch | grep -v "develop" | xargs git branch -D'
alias gbc='gcm && gbdam && clear && gl'

# Terminal
alias wwwkill='lsof -ti tcp:4567 | xargs kill -9'

# Yarn
alias y="yarn "
alias ya="yarn add"
alias yad="yarn add --dev"
alias yac="yarn autoclean"
alias ycc="yarn cache clean"
alias yga="yarn global add"
alias ygr="yarn global remove"
alias yh="yarn help"
alias yi="yarn init"
alias yl="yarn list"
alias yout="yarn outdated"
alias ypr="yarn prune"
alias yr="yarn run"
alias yrm="yarn remove"
alias yui="yarn upgrade-interactive --latest"
alias yw="yarn why"

# ZSH
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/dotfiles/.oh-my-zsh/custom'
