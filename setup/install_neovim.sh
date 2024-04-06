# neovim that ships with Ubuntu is insanely old. Need to use special install to do it. 

wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
mv nvim-linux64 ~/soft
ln -s ~/soft/nvim-linux64/bin/nvim ~/.local/bin
