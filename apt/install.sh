#!/bin/bash
#
#TODO Set up Vim properly
#TODO combine the for loops into a function
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.
source ~/dotfiles/packages.sh

if [[ $OS == "linux-gnu" ]]; then

    sudo apt-get update --assume-yes
    sudo apt-get dist-upgrade --assume-yes

    for (( i = 1; i<${aptPkgsLength}+1; i++)); do

	    pkg=${aptPackages[$i-1]}

	    echo "Installing package '$pkg'"
	    sudo apt-get install $pkg --assume-yes
    done

    echo "cleaning up"

    sudo apt-get autoclean

    #use this to determine if a package exists
    #dpkg -l | grep $pkg | awk '{print $2, $3}'
fi
