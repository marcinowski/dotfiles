#!/bin/bash

p=$(dirname `realpath $0`)

for fn in '.vimrc' '.bashrc' '.bash_aliases';
do
  echo "copying $p/$fn ..."
  cd ~
  mv "$fn" "$fn".bkup
  ln -s "$p/$fn" "$fn"
done
ln -s "$p/.vim" ".vim"
mkdir ~/tmp 2>/dev/null
git submodule update --init --remote
touch ~/.bash_custom

