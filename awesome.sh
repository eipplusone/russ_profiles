#! /bin/sh
#
# awesome.sh
# Copyright (C) 2014 ruslankiselev <ruslankiselev@macbook-pro.ic.ncs.com>
#
# Distributed under terms of the MIT license.
#

sudo yum install bash-completion
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo 'source ~/russ_profiles/.bash_profile' >> ~/.bash_profile
echo 'so ~/russ_profiles/.vimrc' >> ~/.vimrc
vim +PluginInstall +qall
