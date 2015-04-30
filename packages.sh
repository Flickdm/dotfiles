#!bin/bash

# -----------------------------------------------------------------------------#
#
#	This file contains all the packages used througout the installation process
#	if you would like to update/add/remove packages you can do it through here
#
# -----------------------------------------------------------------------------#
# ------------------------------- NPM -----------------------------------------#

# NPM packages to be installed globally

declare -a npmPackages=(
	"lodash" "express" "grunt-cli"
	"phonegap" "nodemon" "bower"
	"shelljs")

npmPkgsLength=${#npmPackages[@]}

# ------------------------------- OSX BREW -------------------------------------#

# Terminal Applications to be installed through Brew

declare -a brewPackages=(
	"htop-osx" "node"
	"zsh" "nmap" "tig"
	"grc" "coreutils" "spark"
	"zsh" "brew-cask" "git" 
    "irssi" "cmus")

# GUI Applications to be installed through Brew/Cask

declare -a caskPackages=(
	"google-chrome" "iterm2"
	"spotify" "the-unarchiver")

brewPkgsLength=${#brewPackages[@]}
caskPkgsLength=${#caskPackages[@]}

# -------------------------------- DEBIAN APT -----------------------------------#

declare -a aptPackages=(
	"zeal" "htop" "node"
	"zsh" "tig" "nmap"
	"gparted" "terminator" "git"
    "linux-headers-$(uname -r) build-essential" 
    "cmus" "irssi" "vim-gnome")

aptPkgsLength=${#aptPackages}

# ---------------------------------- VIM ----------------------------------------#
