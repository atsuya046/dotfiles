#!/usr/bin/env bash

DOTPATH=$HOME/.dotfiles

if [ ! -d "$DOTPATH" ]; then
    git clone https://github.com/atsuya046/dotfiles.git $DOTPATH
fi

cd "$DOTPATH"

mkdir -p /usr/local/opt/node
ln -s .nodebrew/current/ /usr/local/opt/node/

if ! command -v brew > /dev/null 2>&1; then
    # Install homebrew: https://brew.sh/
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo
    echo >> $HOME/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
brew bundle
echo

if ! command -v gvm > /dev/null 2>&1; then
    # Install gvm
    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
    echo
    source $HOME/.gvm/scripts/gvm
fi

# Install sdkman
curl -s "https://get.sdkman.io" | bash

# make links
$DOTPATH/dotfiles_link.sh

echo "Bootstrapping DONE!"

