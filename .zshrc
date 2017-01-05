# Path to your oh-my-zsh installation.
export ZSH=/Users/mehtap4/.oh-my-zsh

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
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/mehtap4/Essentials/apache-maven-3.3.3/bin:/usr/local/sbin"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_51.jdk/Contents/Home"
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

# Exports
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# Git Related
alias statgit="git status"
alias getrepo="cd ~/Fork_Repositories"
alias add="git add"
alias commit="git commit"
alias gdiff="git diff"
alias getseqalto="cd ~/Fork_Repositories/seqalto/"
alias gcout="git checkout"

gpushforce () {
  gpush "--force" $1
}

gpush () {
  git push $1 $2 HEAD:$(git branch | grep '*' | awk -F' ' '{ print $2 }')
}

# Maven Related
THREAD_COUNT="4"
PERM_SIZE="256m"
alias mclean="mvn -T 4 eclipse:clean eclipse:eclipse"
alias muclean="mvn -T 4 -U clean eclipse:clean eclipse:eclipse"
alias multimate="MAVEN_OPTS='-Xmx1g -XX:MaxPermSize=256m' mvn -T 4 -U clean eclipse:clean eclipse:eclipse -DskipTests install" 
alias minstall="MAVEN_OPTS='-Xmx1g -XX:MaxPermSize=256m' mvn -T 4 -DskipTests clean install"
alias mfastinstall="minstall -pl '!external' -T 4"

# JDK Version switching
alias JDK7="export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)"
alias JDK8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
# Search related
alias khoj="grep -A7 -B7 -niIr"

# SSH Related
export trex_ip="10.27.4.2"
alias trex="ssh -L 22001:127.0.0.1:8081 puneet@"${trex_ip}

bssh () {
  ssh -A puneet@$1.binatechnologies.com
}

alias sh_trex="ssh -A puneet@"${trex_ip}
alias sh_tunnel="ssh -D 7584 puneet@"${trex_ip}

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Shell Integration
source ~/.iterm2_shell_integration.`basename $SHELL`
