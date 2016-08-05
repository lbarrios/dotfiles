DOTFILES=~/repositorios/dotfiles
export DOTFILES

# tmux with colors
alias tmux='tmux -2'

# quietly check and pull dotfiles updates
(cd ${DOTFILES} && git pull -q &)
