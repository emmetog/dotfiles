export ZSH="${HOME}/.oh-my-zsh"

#ZSH_THEME="agnoster"
ZSH_THEME="eastwood"

# Plugins.
plugins=(aliases git zsh-autosuggestions z docker-compose)

source $ZSH/oh-my-zsh.sh

# Node Version Manager stuff
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
