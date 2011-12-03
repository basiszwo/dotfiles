# Colorize the Terminal
export CLICOLOR=1;

# Setup Amazon EC2 Command-Line Tools
export EC2_HOME=~/ec2-api-tools
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=~/ec2-api-tools/pk-3ZBQ7YX7CEZJR5ZBAZICDEJTH7ACXECM.pem
export EC2_CERT=~/ec2-api-tools/cert-3ZBQ7YX7CEZJR5ZBAZICDEJTH7ACXECM.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/


export EDITOR='mate -w'
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/usr/local/git/bin:/Users/sb/.gem/ruby/1.8/bin
export SHELL=/bin/bash

# Finished adapting your PATH environment variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH

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
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias grma='git ls-files --deleted | xargs git rm'

alias mysql_start="sudo /usr/local/mysql/support-files/mysql.server start"
alias mysql_stop="sudo /usr/local/mysql/support-files/mysql.server stop"

alias psql_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias psql_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

#alias ars="sudo apachectl restart"
alias ars="sudo /usr/sbin/httpd -k restart"
alias prs="touch tmp/restart.txt"

# alias redis-start="redis-server /usr/local/etc/redis.conf"
# alias redis-stop=""


alias reload=". ~/.bashrc"
alias h='curl -sIw "Time: %{time_total}s\n" -X GET'


# COLORS
LIGHT_GRAY="\[\033[0;37m\]"; BLUE="\[\033[1;36m\]"; RED="\[\033[0;31m\]"; LIGHT_RED="\[\033[1;31m\]";
GREEN="\[\033[0;32m\]"; WHITE="\[\033[1;37m\]"; LIGHT_GRAY="\[\033[0;37m\]"; YELLOW="\[\033[1;33m\]";
# GIT PROMPT (http://gist.github.com/120804)
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \(\1\)/';
}
function parse_git_status {
  git status 2> /dev/null | sed -e '/(working directory clean)$/!d' | wc -l;
}
function check_git_changes {
  # tput setaf 1 = RED, tput setaf 2 = GREEN
  [ `parse_git_status` -ne 1 ] && tput setaf 1 || tput setaf 2
}
export PS1="$YELLOW\w\[\$(check_git_changes)\]\$(parse_git_branch)$LIGHT_GRAY $ "


# has to be the last command !!
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
