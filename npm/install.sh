#!/bin/sh

# update NPM

declare -a npmPackages=(
	"lodash" "express" "grunt-cli"
	"phonegap" "nodemon" "bower"
	"shelljs")

npmPkgsLength=${#npmPackages[@]}

npm -g update

for (( i = 1; i<${npmPkgsLength}+1; i++)); do

	pkg=${npmPackages[$i-1]}
	echo "Installing NPM package '$pkg'"
	sudo npm install $pkg -g
done


