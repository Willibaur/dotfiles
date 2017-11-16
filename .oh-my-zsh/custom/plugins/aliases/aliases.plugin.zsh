# Custom Aliases

# Atom
alias at='atom .'

# Git
alias gbdam='git branch | grep -v "master" | xargs git branch -D'
alias gbdad='git branch | grep -v "develop" | xargs git branch -D'
alias gbc='gcm && gbdam && clear && gl'

# Terminal
alias wwwkill='lsof -ti tcp:4567 | xargs kill -9'

# ZSH
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/dotfiles/.oh-my-zsh/custom'
