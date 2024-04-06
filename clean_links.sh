wd=`pwd`
rm -v  ${HOME}/.shrc
rm -v  ${HOME}/.bashrc
rm -v  ${HOME}/.config/nvim/init.vim
for fn in bash_profile vimrc inputrc gitconfig gitignore_global
do
  rm -v ${HOME}/.${fn}
done
