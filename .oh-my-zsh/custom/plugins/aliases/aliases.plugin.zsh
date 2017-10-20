# Custom Aliases

# Atom
alias at='atom .'

# Git
alias gbdam='git branch | grep -v "master" | xargs git branch -D'
alias gbdad='git branch | grep -v "develop" | xargs git branch -D'
alias gbc='gcm && gbdam && clear && gl'

# ZSH
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/dotfiles/.oh-my-zsh/custom'
