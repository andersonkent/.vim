@echo off

mkdir %USER_PROFILE%/.vim/bundle
pushd %USER_PROFILE%/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git Vundle.vim
popd
