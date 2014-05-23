#!/usr/bin/env bash

mkdir swapfiles
mkdir bundle
cd bundle
git clone https://github.com/gmarik/Vundle.vim.git Vundle.vim
cd ..
vim -c "PluginInstall" -c "qa!" 

echo Vim environment is initialized.  Enjoy!
