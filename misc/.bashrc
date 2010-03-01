export TERM=xterm-256color

shopt -s histappend 
export PROMPT_COMMAND="history -a; history -n"

alias ls='ls --color=auto'
alias mv='mv -i'
alias cp='cp -i'
alias df='df -h'
alias grep='grep --color=auto'
if [ -f /usr/bin/ack-grep ]; then
    alias ack='ack-grep'
fi

PS1='[\u@\h \W]\$ '
export manpath=

bind '"\e[Z":menu-complete'

export SVN_EDITOR=vim
export EDITOR=vim
export VISUAL=vim
export JAVA_HOME=/usr/lib/jvm/java-6-sun

#export ftp_proxy=http://10.131.1.124:808
#export http_proxy=http://10.131.1.124:808
export ftp_proxy=
export http_proxy=

export PATH=${PATH}:/usr/local/bin:~/tools/depot_tools
export GYP_GENERATORS=make

# stty -ixoff -ixon

export IDIR=~/simplescalar 
export ODIR=~/simplescalar 
export CILHOME=/home/wyx/cil

export PS1='\[\e[38;5;39m\][\u@\h \W]\$\[\e[0m\] '

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

fi

