# .bashrc

# PROMPT
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
BLUE="\[$(tput setaf 4)\]"
MAGENTA="\[$(tput setaf 3)\]"
CYAN="\[$(tput setaf 6)\]"
WHITE="\[$(tput setaf 7)\]"
NC="\[$(tput sgr0)\]"
export PS1="$MAGENTA\u$NC@$BLUE\h$NC:$GREEN\w$NC$ $RED"

# HISTORY
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTFILESIZE=2000

# MISC
set -o vi
shopt -s autocd cdspell checkwinsize dirspell dotglob extglob globstar histappend
trap 'echo -ne "\e[0m"' DEBUG

# ALIASES
alias df='df -h'
alias egrep='egrep --color=auto'
alias fetch='git fetch --all'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias pingg='ping www.google.com'
alias ps='ps -ef'
alias pydoc='python -m pydoc'
alias rebase='git rebase origin/master'
alias tactivate='source .tox/py27/bin/activate'
alias vi='vim -R'

# OS X ALIASES
alias awake='caffeinate -dimsut 86400'
alias cleanup='brew cleanup'
alias freshbrew='brew update; echo; brew outdated; echo; sudo softwareupdate --list'
alias la='ls -AFG'
alias ll='ls -alFG'
alias popup='terminal-notifier -message '

alias updatedb='sudo $HOME/bin/locate.updatedb'
source $HOME/bin/git-completion.bash

# EXPORTS
export LANG=en_US.UTF-8
export MAVEN_OPTS="-Xms64m -Xmx512m"
export M2_REPO=$HOME/.m2/repository
export PATH=$HOME/bin:$PATH
export PYTHONPATH=.:/usr/local/lib/python2.7/site-packages:$PYTHONPATH
