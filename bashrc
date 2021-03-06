# Colorize the Terminal
# export CLICOLOR=1;

export EDITOR='subl -w'
export SHELL=/bin/bash

export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/texbin:$PATH

# getting utf-8 support
export LC_CTYPE=de_DE.UTF-8

# automatically include cucumber features while using autotest
# export AUTOFEATURE=true

source ~/.githelpers
source ~/.git-completion.sh

# source ~/.git-prompt-orig.sh
# export GIT_PS1_SHOWUPSTREAM="auto"
# export GIT_PS1_SHOWDIRTYSTATE="true"
# export GIT_PS1_SHOWCOLORHINTS="true"
# export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# aliases for listing directories
alias ll="ls -hl"
alias l="ls -hla"

alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

alias g='git'

eval "$(hub alias -s)"

alias mysql_start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql_stop="sudo /usr/local/mysql/support-files/mysql.server stop"

alias psql_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias psql_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias password_gen="ruby ~/development/password_generator.rb"

alias reload=". ~/.bashrc"
alias h='curl -sIw "Time: %{time_total}s\n" -X GET'

#alias my_ip="ifconfig -a | grep 'inet ' | grep broadcast | awk '{ print $2 }'"

# has to be the last command !!
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/sb/.travis/travis.sh ] && source /Users/sb/.travis/travis.sh
