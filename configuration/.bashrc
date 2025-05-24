#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias cp-tool='xclip -selection clipboard'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias em='emulator -avd emulator'


PS1='[\u@\h \W]\$ '

eval -- "$(/usr/bin/starship init bash --print-full-init)"

# Other env variables
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export ANDROID_HOME=~/Android/Sdk
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_SYMLINK_CURRENT=true

alias edit='neovide &'
