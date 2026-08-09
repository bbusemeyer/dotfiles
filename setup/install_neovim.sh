# neovim that ships with Ubuntu is insanely old. Need to use special install to do it. 

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
ln -fs /opt/nvim-linux-x86_64/bin/nvim ~/.local/bin
