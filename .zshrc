# Path to your oh-my-zsh installation.
  export ZSH=/home/william/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
 # CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
#DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=()

# User configuration

export PATH="$PATH:$HOME/.rvm/bin:/home/william/.rbenv/plugins/ruby-build/bin:/home/william/.linuxbrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/william/.rvm/bin:/home/william/.rvm/gems/ruby-2.2.3/bin:home/william/.rvm/gems/ruby-2.2.3/wrappers/rubocop:/usr/lib/gradle/gradle-2.13/bin"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Alias
# Zsh config
alias zshconfig="atom ~/.zshrc"
alias zshtheme="atom .oh-my-zsh/themes/gnzh.zsh-theme"
alias ohmyzsh="atom ~/.oh-my-zsh"
alias initshell="source ~/.zshrc"

# Terminal
alias cl="echo -ne '\033c'"

# Git
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gac="git add . && git commit -m"
alias gp="git push origin master"
alias gpu="git pull"
alias gr="git remote"
alias gch="git checkout"
alias gcl="git clone"
alias gb="git branch"
alias gh="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

# Rspec
alias rs="echo -ne '\033c' && rspec"

# Bower
alias bi="bower install"

# npm
alias ni="npm install"
alias sd="--save-dev"

# Protractor
alias pr="protractor"
alias prt="echo -ne '\033c' && protractor test/e2e/conf.js"

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

. `brew --prefix`/etc/profile.d/z.sh
