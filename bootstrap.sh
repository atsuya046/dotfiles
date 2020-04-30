#!/usr/bin/env bash

DOTPATH=$HOME/.dotfiles

if [ ! -d "$DOTPATH" ]; then
    git clone https://github.com/atsuya046/dotfiles.git $DOTPATH
fi

cd "$DOTPATH"

if ! command -v brew > /dev/null 2>&1; then
    # Install homebrew: https://brew.sh/
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo
fi
brew bundle
echo

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source $HOME/.gvm/scripts/gvm

echo "Bootstrapping DONE!"

