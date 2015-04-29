#!/bin/bash
#
#TODO Set up Vim properly
#TODO combine the for loops into a function
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

source ../packages.sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo " Updating brew"
	brew update
	brew doctor
	brew upgrade --all
fi


# Upgrades Vim
#brew install macvim --overide-system-vim
#brew linkapps

#brew install mercurial
#brew install vim --with-python --with-ruby --with-perl
#sudo mv /usr/bin/vim /usr/bin/vim72

for (( i = 1; i<${brewPkgsLength}+1; i++)); do

	pkg=${brewPackages[$i-1]}

	if !(brew list -1 | grep -q "^${pkg}\$"); then
		echo "Installing package '$pkg'"
		brew install $pkg
	else
		echo "Package '$pkg' is already installed"
	fi
done


for (( i = 1; i<${caskPkgsLength}+1; i++)); do

	pkg=${caskPackages[$i-1]}

	if !(brew cask list -1 | grep -q "^${pkg}\$"); then
		echo "Installing cask package '$pkg'"
		brew cask install $pkg
	else
		echo "Cask package '$pkg' is already installed"
	fi
done
exit 0
