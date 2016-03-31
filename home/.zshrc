# Check if zgen is installed
[[ -d ~/.zgen ]] || {
  git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen
}
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

  # prezto options
    zgen prezto editor key-bindings 'emacs'
    zgen prezto prompt theme 'sorin'

    # prezto and modules
    zgen prezto
    zgen prezto git
    zgen prezto command-not-found
    zgen prezto syntax-highlighting
    zgen save
fi

source "$HOME/.homesick/repos/homeshick/homeshick.sh"