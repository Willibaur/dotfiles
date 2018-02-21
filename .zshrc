#If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh

# Set Custom folder
ZSH_CUSTOM=~/dotfiles/oh-my-zsh/custom

# Set name of the theme to load. Optionally, if you set this to "random"
ZSH_THEME="muse_customized"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# All alias are loading via ZSH_CUSTOM folder
plugins=(aliases bundler git web-search yarn z)

# User configuration

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

# Enable zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/oh-my-zsh.sh

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
