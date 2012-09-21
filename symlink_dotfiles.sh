#!/bin/bash
echo "linking dotfiles to home directory"

FILES="bashrc
irbrc
autotest
autotest_images
gemrc
gitshrc
my.cnf
gitconfig
tm_properties
githelpers
githelpers_gb"

for file in $FILES
do
  ln -s ~/development/dotfiles/$file ~/.$file
done
