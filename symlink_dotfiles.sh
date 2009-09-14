#!/bin/bash
echo "linking dotfiles to home directory"

FILES="bashrc
irbrc
autotest
autotest_images
gemrc
gitshrc
my.cnf"

for file in $FILES
do
  ln -s ~/git-files/dotfiles/.$file ~/.$file
done