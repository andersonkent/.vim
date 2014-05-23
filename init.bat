@echo off

mkdir swapfiles
mkdir bundle
cd bundle
git clone https://github.com/gmarik/Vundle.vim.git Vundle.vim
cd ..

vim -c "PluginInstall" -c "q" -c "q"

echo Vim environment is initialized.  Enjoy!
