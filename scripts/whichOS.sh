#!/bin/bash

case "$OSTYPE" in
		"linux-gnu")
			# Linux Detected

			sudo ./../apt/install.sh  # apt-get install
            sudo ./../npm/install.sh # npm install
            sudo ./bootstrap.sh # rake dotfiles
            ;;
		"darwin"*)
			# OSX detected
			./../OS/setOSXDefaults.sh # Sensible Defaults
			./../brew/install.sh # Brew install
			sudo ./../npm/install.sh # npm install
            sudo ./bootstrap.sh # rake dotfiles
			;;
		*)
			exit 1
esac

