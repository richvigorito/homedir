# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions

PATH=$HOME/bin/:$PATH
SVN_EDITOR=vi
EDITOR=vi

export MYSQL_PS1='\u@\h mysql> '

export EDITOR
export PATH
export SVN_EDITOR

################
### aliases ####
################
alias dirc="ls -l . | egrep -c '^-'"
alias h="cd ~"
alias c="clear"
alias rm="rm -i"
alias vi="vim"
alias cvtMAC="tr '\r' '\n' "  ###cvt <MACFILE > UNIXFILE
alias cvtDOS="tr -d '\r' "    ###cvt <DOSFILE > UNIXFILE
alias ..="cd .."


#######################
## shell display  #####
#######################
export PS1="$colorScheme \[\033[33;1m\]\w\[\033[m\] (\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)) \$ "

#######################
## history behavior ###
#######################
shopt -s histappend         #makes history accessable
PROMPT_COMMAND='history -a' #across multiple open shells
export HISTCONTRL="ignoredups"
HISTIGNORE='ls:bg:fg:history'
HISTSIZE=
HISTFILESIZE=
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
# export HISTFILE=~/.bash_eternal_history
~
