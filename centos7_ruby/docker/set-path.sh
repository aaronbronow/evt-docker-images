#!/usr/bin/env bash
echo PATH=/home/evt/.rvm/gems/ruby-$1/bin:/home/evt/.rvm/gems/ruby-$1@global/bin:/home/evt/.rvm/rubies/ruby-$1/bin:\$PATH >> ~/.bashrc
echo GEM_HOME=/home/evt/.rvm/gems/ruby-$1 >> ~/.bashrc
echo GEM_PATH=/home/evt/.rvm/gems/ruby-$1:/home/evt/.rvm/gems/ruby-$1@global >> ~/.bashrc
