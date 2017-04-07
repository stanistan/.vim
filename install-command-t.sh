#! /bin/bash
set -e

cd ~/.vim/bundle/command-t/ruby/command-t
make clean
ruby extconf.rb
make
