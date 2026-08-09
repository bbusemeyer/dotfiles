
wd=`pwd`
ln -fvs ${wd}/config/shrc ${HOME}/.shrc
ln -fvs ${wd}/config/bashrc ${HOME}/.bashrc
ln -fvs ${wd}/config/init.vim ${HOME}/.config/nvim/init.vim
ln -fvs ${wd}/config/dotvim/* ${HOME}/.vim
ln -fvs ${wd}/config/flake8 ${HOME}/.config/flake8
for fn in bash_profile vimrc inputrc gitconfig gitignore_global
do
  ln -fvs ${wd}/config/${fn} ${HOME}/.${fn}
done
