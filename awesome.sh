#! /bin/sh
#
# awesome.sh
# Copyright (C) 2014 ruslankiselev <ruslankiselev@macbook-pro.ic.ncs.com>
#
# Distributed under terms of the MIT license.
#


cat source ~/russ_profiles/.bash_profile >> ~/.bash_profile
cat so ~/russ_profiles/.vimrc >> ~/.vimrc
vim +PluginInstall +qall
