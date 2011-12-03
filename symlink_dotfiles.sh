#!/bin/bash
echo "linking dotfiles to home directory"

FILES="bashrc
irbrc
autotest
autotest_images
gemrc
gitshrc
my.cnf
gitconfig"

for file in $FILES
do
  ln -s ~/development/dotfiles/$file ~/.$file
done