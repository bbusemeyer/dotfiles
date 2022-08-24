# Link the configuration files in the places they should go.

cwd=`pwd`
cd ../config
wd=`pwd`
for fn in gitignore gitconfig_global shrc zshrc oh-my-zsh inputrc
do
  ln -vs ${wd}/${fn} ${HOME}/.${fn}
done
cd $cwd
