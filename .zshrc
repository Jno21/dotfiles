# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="spaceship"

HIST_STAMPS="dd/mm/yyyy"

plugins=(battery git brew docker github node npm osx pip python zsh-completions zsh-syntax-highlighting ssh-agent)

GEOMETRY_PROMPT_PLUGINS=(virtualenv docker_machine exec_time git)
GEOMETRY_PROMPT_PREFIX="\n"
GEOMETRY_PROMPT_SUFFIX="\n"
GEOMETRY_PROMPT_PREFIX_SPACER=" "
GEOMETRY_SYMBOL_SPACER=" "
GEOMETRY_DIR_SPACER=" "
GEOMETRY_PLUGIN_SEPARATOR=" "
GEOMETRY_GREP=""

export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source ~/.zshrc.local
source ~/.zsh/.kubernetes_alias
source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# ssh-agent
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities github_wescale_rsa dedibox_work_rsa radiofrance_rsa

# Completion
source <(stern --completion=zsh)

# Google cloud
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

###          ###
# Color for ls #
###          ###

# ~/.dircolors/themefile
eval `gdircolors ~/.dircolors/dircolors.256dark`

# Aliases
alias ls='gls --color=auto'
alias nibo='sudo cp /Users/jonathan/Documents/NextInteractive/config/hosts_nitv /etc/hosts'
alias nifr='sudo cp /Users/jonathan/Documents/NextInteractive/config/hosts /etc/hosts'
alias ne='emacs -nw'
alias cat='bat'
alias du="ncdu --color dark -rr -x"
alias ping='prettyping'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias find="fd"
