#!/bin/bash

source "`dirname $0`"/../lib/colors.sh
source "`dirname $0`"/../lib/enviroments.sh

cat $DOTFILES/homedir/bashrc >> $HOME/.bashrc
source $HOME/.bashrc
ok "$HOME/.bashrc"
