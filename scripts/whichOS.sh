#! /usr/bin/env bash

case "$OSTYPE" in
		"linux-gnu")
			# Linux Detected
			;;
		"darwin"*)
			# OSX detected
			# Set Preferences
			printf "\t --> Setting defaults"
			./../osx/set-defaults.sh
			# Install brew and or dependencies
			./../brew/install.sh
			;;
		*)
			exit 1
esac
