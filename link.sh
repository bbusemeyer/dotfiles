
wd=`pwd`
ln -vs ${wd}/config/shrc ${HOME}/.shrc
ln -vs ${wd}/config/bashrc ${HOME}/.bashrc
ln -vs ${wd}/config/init.vim ${HOME}/.config/nvim/init.vim
for fn in bash_profile vimrc inputrc gitconfig gitignore_global
do
  ln -vs ${wd}/config/${fn} ${HOME}/.${fn}
done
