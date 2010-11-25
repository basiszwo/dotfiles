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
export AUTOFEATURE=true

# aliases for listing directories
alias ll="ls -l"
alias l="ls -la"

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

#alias ars="sudo apachectl restart"
alias ars="sudo /usr/sbin/httpd -k restart"
alias prs="touch tmp/restart.txt"

alias firefox-pm='/Applications/Firefox.app/Contents/MacOS/firefox-bin -ProfileManager'
alias firefox-default='/Applications/Firefox.app/Contents/MacOS/firefox-bin'
alias firefox-dev='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p development'
alias firefox-monit='/Applications/Firefox.app/Contents/MacOS/firefox-bin -p monitoring'

alias reload=". ~/.bash_profile"


# has to be the last command !!
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
