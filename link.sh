
wd=`pwd`
ln -vs ${wd}/config/shrc ${HOME}/.shrc
ln -vs ${wd}/config/bashrc ${HOME}/.bashrc
ln -vs ${wd}/config/init.vim ${HOME}/.config/nvim/init.vim
ln -vs ${wd}/config/dotvim/* ${HOME}/.vim
ln -vs ${wd}/config/flake8 ${HOME}/.config/flake8
for fn in bash_profile vimrc inputrc gitconfig gitignore_global
do
  ln -vs ${wd}/config/${fn} ${HOME}/.${fn}
done
