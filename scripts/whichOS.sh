#!/bin/bash

case "$OSTYPE" in
		"linux-gnu")
			# Linux Detected
			;;
		"darwin"*)
			# OSX detected

			# Set Preference
			printf "\t --> Setting defaults"
			./../osx/set-defaults.sh
			# Install brew and or dependencies
			./../brew/install.sh
			# Installs npm packages globally
			sudo ./../npm/install.sh
			;;
		*)
			exit 1
esac

