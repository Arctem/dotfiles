# Path to your oh-my-zsh installation.
export ZSH=/Users/arctem/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)

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

#Lunchy (launching memcached and other things)
#LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
#if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
#  . $LUNCHY_DIR/lunchy-completion.zsh
#fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="emacs ~/.zshrc && source ~/.zshrc"
alias ohmyzsh="emacs ~/.oh-my-zsh"
alias l='ls -G'
alias ls='ls -G'
alias la='ls -Ah'
alias ll='ls -lh'
alias lla='ls -lAh'
alias lal='ls -lAh'
alias lsa='ls -Ah'

alias e='emacs'
alias p='python3'
alias gul='git pull'
alias gsul='git stash && git pull && git stash pop'
alias gus='git push'
alias gap='git add -p'
alias got='git checkout'
alias gif='git diff'
alias gog='git log --graph'

#redis (from http://naleid.com/blog/2011/03/05/running-redis-as-a-user-daemon-on-osx-with-launchd)
alias redisstart='sudo launchctl start io.redis.redis-server'
alias redisstop='sudo launchctl stop io.redis.redis-server'

alias ber='bundle exec rake'
alias dbnuke='bundle exec rake db:drop db:create && bundle exec rake db:migrate && bundle exec rake db:seed quick_seed=tiny'
alias startfms='passenger start --ssl --ssl-certificate=server.crt --ssl-certificate-key=server.key --port 3000'
alias startsc='passenger start --ssl --ssl-certificate=server.crt --ssl-certificate-key=server.key --port 3001'
alias nom="rm -rf node_modules && npm cache clear && npm i"

export HOMEBREW_GITHUB_API_TOKEN="7f9f7f0bd3d47a3155405d9638336f1a697200fe"

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

eval "$(thefuck --alias)"

eval "$(rbenv init -)"

fpath=(/usr/local/share/zsh-completions $fpath)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
