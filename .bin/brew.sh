#!/bin/zsh

if [ "$(uname)" != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

BREW_FILE="$(pwd)/Brewfile"

brew bundle --file "${BREW_FILE}" --global
