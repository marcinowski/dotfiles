#!/bin/bash

for fn in '.vimrc' '.bashrc' '.bash_aliases';
do
	echo "copying $fn ..."
	cp ~/"$fn" ~/"$fn".bkup
	ln -s "$fn" ~/"$fn"
done

sublPath = "~/.config/sublime-text-3/Packages/User"

cd sublime
for fn in "ls";
do
	echo "copying $fn ..."
	cp "$sublPath/$fn" "$sublPath/$fn.bkup"
	cp "$fn" "$sublPath/"
done

