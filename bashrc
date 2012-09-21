# Colorize the Terminal
# export CLICOLOR=1;

# export EDITOR="$HOME/bin/mate -w"

# export EDITOR='mate -w'
export EDITOR='subl -w'
export SHELL=/bin/bash

export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/texbin:$PATH

# getting utf-8 support
export LC_CTYPE=de_DE.UTF-8

# automatically include cucumber features while using autotest
# export AUTOFEATURE=true

# aliases for listing directories
alias ll="ls -l"
alias l="ls -la"

alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

# Git aliases for bash
#alias gst='git status'
#alias gl='git pull'
#alias gp='git push'
#alias gd='git diff | mate'
#alias gc='git commit -v'
#alias gca='git commit -v -a'
#alias gb='git branch'
#alias gba='git branch -a'
#alias grma='git ls-files --deleted | xargs git rm'
#alias gwc='git whatchanged -p --abbrev-commit --pretty=medium'

alias mysql_start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql_stop="sudo /usr/local/mysql/support-files/mysql.server stop"

alias psql_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias psql_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# alias redis-start="redis-server /usr/local/etc/redis.conf"
# alias redis-stop=""

alias reload=". ~/.bashrc"
alias h='curl -sIw "Time: %{time_total}s\n" -X GET'

source ~/.githelpers

# has to be the last command !!
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
