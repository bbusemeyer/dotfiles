
# Edit this to specialize the Bash environment to a specific computer.
bash_prefix='base'

wd=`pwd`
ln -vs ${wd}/config/${bash_prefix}_bashrc ${HOME}/.bashrc
ln -vs ${wd}/config/${bash_prefix}_aliases ${HOME}/.bash_aliases
ln -vs ${wd}/config/mydelek.vim ${HOME}/.vim/colors
for fn in bash_profile vimrc inputrc gitconfig gitignore_global
do
  ln -vs ${wd}/config/${fn} ${HOME}/.${fn}
done
