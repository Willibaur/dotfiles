# Custom Aliases

# Atom
alias at='atom .'

# Git
alias gbdam='git branch | grep -v "master" | xargs git branch -D'
alias gbdad='git branch | grep -v "develop" | xargs git branch -D'
alias gbc='gcm && gbdam && gfa && clear && gl'

# Server
alias 3wkill='lsof -ti tcp:4567 | xargs kill -9'

# SP
alias ft='rm -rf tmp/ clients/adviser/tmp clients/common/tmp clients/employee/tmp clients/employer/tmp clients/my/tmp'
alias fn='rm -rf node_modules/'

# Yarn
alias yac="yarn autoclean"
alias yga="yarn global add"
alias ygr="yarn global remove"
alias yi="yarn init"
alias ypr="yarn prune"
alias yui="yarn upgrade-interactive --latest"
alias yw="yarn why"

# ZSH
alias zshconfig='vim ~/.zshrc'
