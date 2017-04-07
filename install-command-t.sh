#! /bin/bash
set -e

cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
