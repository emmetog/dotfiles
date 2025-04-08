export ZSH="${HOME}/.oh-my-zsh"

#ZSH_THEME="agnoster"
ZSH_THEME="eastwood"

# Plugins.
plugins=(aliases git zsh-autosuggestions z docker-compose)

source $ZSH/oh-my-zsh.sh

# Node Version Manager stuff
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# For python libs like aider
SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt

alias activate_ansible2.16.7='source ~/.venv/ansible2.16.7/bin/activate'
alias findscu="docker run -it --rm pydicom/dicom findscu"
alias echoscu="docker run -it --rm pydicom/dicom echoscu"
alias node="docker run -it --rm -v $(pwd):/directory -w /directory node node"

export PATH=/home/emmet/.local/bin/:$PATH
