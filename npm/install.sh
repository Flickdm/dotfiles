#!/bin/bash
# Redo this completely with nvm
# update NPM

source ../packages.sh

:'
npm -g update

for (( i = 1; i<${npmPkgsLength}+1; i++)); do

	pkg=${npmPackages[$i-1]}
	echo "Installing NPM package '$pkg'"
	sudo npm install $pkg -g
done
'

