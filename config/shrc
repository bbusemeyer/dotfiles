# Shell customizations for bash or zsh. 

# Aliases.
alias ll='ls -alFh'
alias la='ls -Ah'
alias less='less -r'       # raw control characters
alias vi=nvim
alias vim=nvim
alias view='nvim -R'
alias ci=nvim # Common mistype with disasterous consequences.
alias grep='grep --color'  # show differences in colour
alias date='date "+%F"' 
alias gpp='g++'
alias tarp='tar --use-compress-program=pigz'
alias mcrypt='mcrypt -u'
alias rsync='rsync --progress'
alias qs='qstat -a'
alias dc='cd ..'
alias update="sudo apt-get update; sudo apt-get dist-upgrade -y ; sudo apt-get autoremove -y"
alias mod="module"
alias py="python -u"

# Git aliases.
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias ga='git add'
alias gd='git diff'

# Globus shortcuts.
gflat='c3dc2ae2-74c6-11e8-93bb-0a6d4e044368'
gsdsc='f327a108-b5cd-11e8-8241-0a3b7ca8ce66'

# function cd_func
# This function defines a 'cd' replacement function capable of keeping, 
# displaying and accessing history of visited directories, up to 10 entries.
# To use it, uncomment it, source this file and try 'cd --'.
# acd_func 1.0.5, 10-nov-2004
# Petar Marinov, http:/geocities.com/h2428, this is public domain
cd_func ()
{
  local x2 the_new_dir adir index
  local -i cnt

  if [[ $1 ==  "--" ]]; then
    dirs -v
    return 0
  fi

  the_new_dir=$1
  [[ -z $1 ]] && the_new_dir=$HOME

  if [[ ${the_new_dir:0:1} == '-' ]]; then
    #
    # Extract dir N from dirs
    index=${the_new_dir:1}
    [[ -z $index ]] && index=1
    adir=$(dirs +$index)
    [[ -z $adir ]] && return 1
    the_new_dir=$adir
  fi

  #
  # '~' has to be substituted by ${HOME}
  [[ ${the_new_dir:0:1} == '~' ]] && the_new_dir="${HOME}${the_new_dir:1}"

  #
  # Now change to the new dir and add to the top of the stack
  pushd "${the_new_dir}" > /dev/null
  [[ $? -ne 0 ]] && return 1
  the_new_dir=$(pwd)

  #
  # Trim down everything beyond 11th entry
   popd -n +11 2>/dev/null 1>/dev/null

  #
  # Remove any other occurence of this dir, skipping the top of the stack
  for ((cnt=1; cnt <= 10; cnt++)); do
    x2=$(dirs +${cnt} 2>/dev/null)
    [[ $? -ne 0 ]] && return 0
    [[ ${x2:0:1} == '~' ]] && x2="${HOME}${x2:1}"
    if [[ "${x2}" == "${the_new_dir}" ]]; then
      popd -n +$cnt 2>/dev/null 1>/dev/null
      cnt=cnt-1
    fi
  done

  return 0
}

alias cd=cd_func
