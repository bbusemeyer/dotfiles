
wd=`pwd`
for fn in gitignore gitconfig_global shrc zshrc oh-my-zsh
do
  ln -vs ${wd}/config/${fn} ${HOME}/.${fn}
done
