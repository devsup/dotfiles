# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
# DISABLE_LS_COLORS="true"

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
plugins=(autojump git osx)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export ANDROID_SDK="$HOME/Library/Android/sdk/"
export PATH="$PATH:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools/"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"
export ELDER_DATABASE_URL_DEV="postgres://$USER@localhost/elder_dev?pool=10"
export ELDER_DATABASE_URL_TEST="postgres://$USER@localhost/elder_test?pool=10"
export RELX_REPLACE_OS_VARS=true
export AWS_ACCESS_KEY_ID="AKIAJBJSK67RSMXXVZKA"
export AWS_SECRET_ACCESS_KEY="2eEz5HzrWxnkkbjxe4Gbn7Wc5JbixagnpZN8cC5+"
export AWS_DEFAULT_REGION="eu-central-1"
export ARAYASHIKI_DATABASE_URL_DEV="postgres://$(whoami)@localhost/arayashiki_ws_dev?pool=10"
export ARAYASHIKI_DATABASE_URL_TEST="postgres://$(whoami)@localhost/arayashiki_ws_test?pool=10"
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

ps1() {
  PS1="$PS1%{$fg_bold[yellow]%}$GIT_AUTHOR_NAME%{$reset_color%}$ "
}

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

# persist pair info between terminal instances
hitch
ps1
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# node
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
