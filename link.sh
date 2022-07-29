
# Edit this to specialize the Bash environment to a specific computer.
bash_prefix='ccqlin023'

echo "Linking configurations to '${HOME}'."

ln -vs config/${bash_prefix}_bashrc ${HOME}/.bashrc
ln -vs config/${bash_prefix}_aliases ${HOME}/.bash_aliases
for fn in vimrc inputrc gitconfig gitignore_global
do
  ln -vs config/${fn} ${HOME}/.${fn}
done
