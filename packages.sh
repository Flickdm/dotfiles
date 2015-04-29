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

declare -a basicPackages=(
	"htop-osx" "node"
	"zsh" "nmap" "tig"
	"grc" "coreutils" "spark"
	"zsh" "brew-cask")

# GUI Applications to be installed through Brew/Cask

declare -a caskPackages=(
	"google-chrome" "iterm2"
	"spotify" "the-unarchiver")

basicPkgsLength=${#basicPackages[@]}
caskPkgsLength=${#caskPackages[@]}

# -------------------------------- DEBIAN APT -----------------------------------#
# ---------------------------------- VIM ----------------------------------------#
