#!bin/bash

# -----------------------------------------------------------------------------#
#
#	This file contains all the packages used througout the installation process
#	if you would like to update/add/remove packages you can do it through here
#
# -----------------------------------------------------------------------------#
# osType will hold to the type of nix* based os

OS=$OSTYPE

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
    "irssi" "cmus" "macvim")

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

# ---------------------------------- VIM -----------------------------------------#

# ---------------------------------- CTF TOOLS -----------------------------------#
declare -a ctfPackages=(
    "aircrack-ng" "bfg" "binuntils"
    "binwalk" "cifer" "dex2jar" 
    "dns2tcp" "fcrackzip" "foremost"
    "hashpump" "hydra" "john" "knock"
    "netpbm" "nmap" "pngcheck" "socat"
    "sqlmap" "tcpflow" "tcpreplay" "tcptrace"
    "ucspi-tcp" "xpdf" "xz")

ctfPkgsLength=${#ctfPackages}

###################################################################################
# ======================= DO NOT CHANGE THESE VARIABLES ===========================

# HANDLES DIRECTORY
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
###################################################################################
