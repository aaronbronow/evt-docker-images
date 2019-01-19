#!/usr/bin/env bash

source $HOME/.rvm/scripts/rvm

rvm use --default --install $1

rvm cleanup all