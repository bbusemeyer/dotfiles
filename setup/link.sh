# Link the configuration files in the places they should go.

cwd=`pwd`
cd ../config
wd=`pwd`
for fn in gitignore_global gitconfig shrc zshrc oh-my-zsh inputrc vimrc
do
  ln -vs ${wd}/${fn} ${HOME}/.${fn}
done

mkdir ~/.config/nvim
ln -vs ${wd}/nvim.vim ~/.config/nvim/init.vim
cd $cwd
