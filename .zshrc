#If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin$PATH


# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# User configuration

# Set Antigen as ZSH plugin manager
source /usr/share/zsh/share/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle bundler
antigen bundle git
antigen bundle yarn
antigen bundle z

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen bundle ~/dotfiles/oh-my-zsh/custom/themes muse_customized.zsh-theme --no-local-clone

# Load aliases.
antigen bundle ~/dotfiles/oh-my-zsh/custom/plugins/aliases --no-local-clone

# Tell Antigen that you're done.
antigen apply

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

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
 mkdir $ZSH_CACHE_DIR
fi

# Enable compinstall
autoload -Uz compinit
compinit

# Enable tmuxinator
source ~/.tmuxinator/tmuxinator.zsh

# Enable asdf plugin manager
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

export PATH="$(yarn global bin):$PATH"
