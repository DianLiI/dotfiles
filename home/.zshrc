# Check if zgen is installed
[[ -d ~/.zgen ]] || {
  git clone https://github.com/tarjoilija/zgen.git ${HOME}/.zgen
}
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    # prezto options
    zgen prezto prompt theme 'sorin'
    zgen prezto '*:*' color 'yes'
    
    # zsh-users
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-completions src
    zgen load tarruda/zsh-autosuggestions
    zgen load djui/alias-tips

    # prezto and modules
    zgen prezto
    zgen prezto git
    zgen prezto command-not-found
    zgen prezto fasd
    zgen save
fi

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
