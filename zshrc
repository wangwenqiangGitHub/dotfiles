# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git history zsh-completions zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
 #SET Tmux
alias cl='clear'
alias tn='tmux new -s'
alias tks='tmux kill-server'
alias ta='tmux attach -t'
alias tkw='tmux kill-window -t'

#SET SERVER
alias s137='ssh root@192.216.20.137'
alias s136='ssh root@192.216.20.136'
alias s135='ssh root@192.216.20.135'
alias s134='ssh root@192.216.20.134'

alias s153='ssh root@192.216.20.153'

alias s143='ssh root@192.216.20.143'
alias s144='ssh root@192.216.20.144'
alias s145='ssh root@192.216.20.145'
alias s120='ssh root@192.216.20.120'
alias s146='ssh root@192.216.20.146'
alias s186='ssh root@192.216.20.186'
alias s187='ssh root@192.216.20.187'

alias srsu='ssh root@172.17.10.2'
alias ll='ls -la'

alias lg='lazygit'

#alias s230214='ssh dtvl@192.168.230.214'
alias s1127='ssh root@10.255.11.27'

function cpNcs(){
	scp "$1" root@192.216.20."$2":/system/bin
}
function do-scp(){
	scp "$1" root@192.216.20."$2":"$3"
}
function cpLib(){
	scp "$1" root@192.216.20."$2":/system/lib
}

export PATH=/home/kingwq/cmake-3.17.0-Linux-x86_64/bin:$PATH
#SET ARM_LINUX GCC
export GCC_ARM_GCC=/mnt/d/code/r14_ltev2x_app/build/toolchain/gcc-4.9-2016.02-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-gcc
export GCC_ARM_GXX=/mnt/d/code/r14_ltev2x_app/build/toolchain/gcc-4.9-2016.02-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-g++
export GCC_ARM_INCLUDE_PATH=/mnt/d/code/r14_ltev2x_app/build/toolchain/gcc-4.9-2016.02-x86_64_arm-linux-gnueabi/include
export GCC_ARM_LIB_PATH=/mnt/d/code/r14_ltev2x_app/build/toolchain/gcc-4.9-2016.02-x86_64_arm-linux-gnueabi/lib
export GCC_ARM_PATH=/mnt/d/code/r14_ltev2x_app/build/toolchain/gcc-4.9-2016.02-x86_64_arm-linux-gnueabi
. /usr/share/autojump/autojump.sh

export PATH=$PATH:/home/kingwq/.config/coc/extensions/coc-clangd-data/install/clangd_11.0.0/bin
export DOCKER_HOST=tcp://localhost:2375
