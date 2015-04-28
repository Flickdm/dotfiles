#! /usr/bin/env bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	# linux

elif [[ "$OSTYPE" == "darwin"* ]]; then
	# Mac OSX
	# install brew!
	../brew/install.sh
fi
