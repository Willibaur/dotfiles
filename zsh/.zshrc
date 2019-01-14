#If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# User configuration
ZSH_DIR=$HOME/dotfiles/zsh

# Set Antigen as ZSH plugin manager
source /usr/share/zsh/share/antigen.zsh

export ANTIGEN_COMPDUMP=$HOME/.zcompdump

antigen init $ZSH_DIR/.antigenrc

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Load ssh-key with passphrase
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

# Enable compinstall
autoload -Uz compinit
compinit

# Enable tmuxinator
source ~/.tmuxinator/tmuxinator.zsh

# Enable asdf plugin manager
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

#export PATH="$(yarn global bin):$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
