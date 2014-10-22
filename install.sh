#!/bin/bash

echo "Installing dotfiles in ${HOME}..."

for dir in `echo */` 
do
	stow -v --target=${HOME} ${dir}
done

echo "Done."
