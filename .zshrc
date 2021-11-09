# Path to your oh-my-zsh installation.
export ZSH="/Users/rizakhan/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_COLOR_SCHEME='light'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'

DEFAULT_USER=`whoami`

plugins=(
  z
  git
  sudo
  zsh-vi-mode
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zsh="nvim ~/.zshrc"
alias vim_runtime="nvim ~/.vim_runtime"

alias ll="ls -lh"
alias pg_start="launchctl load ~/Library/LaunchAgents"
alias pg_stop="launchctl unload ~/Library/LaunchAgents"
# MySQL password = 'password" user: rizakhan
alias mysql_start="brew services start mysql"
alias mysql_stop="brew services stop mysql"
alias mysql_status="brew services status mysql"
alias mysql="mysql -u root -p"
alias hidden="ls -ld .?*"

# pgSQL
alias pg_start="launchctl load ~/Library/LaunchAgents"
alias pg_stop="launchctl unload ~/Library/LaunchAgents"

# Synatx highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/usr/local/sbin:$PATH"
export FZF_DEFAULT_OPTS="--history=$HOME/.fzf_history"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="$PATH:/Users/rizakhan/neovide/target/release"
export PATH="$PATH:/Users/rizakhan/.local/bin/lvim"


export NVM_DIR="/Users/rizakhan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
