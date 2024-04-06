sudo apt-get install $(<../resources/aptlist)
pip install $(<../resources/piplist) --user
source ${DOTFILES}/setup/install_neovim.sh
source ${DOTFILES}/setup/install_plug.sh
