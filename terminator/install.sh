#!/bin/bash

source "`dirname $0`"/../lib/colors.sh
source "`dirname $0`"/../lib/enviroments.sh

if [ ! -e "$HOME/.config/terminator/config" ] ; then
  running "Install terminator..."
  sudo apt install terminator -y
  ok "Terminator successfully installed"
fi

rm -rf $HOME/.config/terminator/config
ln -s $DOTFILES/terminator/config $HOME/.config/terminator/config
running "Linking $HOME/.config/terminator/config"
bot ""
