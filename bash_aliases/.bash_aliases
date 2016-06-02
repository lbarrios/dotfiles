DOTFILES=~/repositorios/dotfiles
export DOTFILES

# quietly check and pull dotfiles updates
(cd ${DOTFILES} && git pull -q &)
