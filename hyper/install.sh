#!/bin/bash

source "`dirname $0`"/../lib/colors.sh
source "`dirname $0`"/../lib/enviroments.sh

if [ ! -e "$HOME/.hyper.js" ] ; then
  running "Download hyper..."
  cd $HOME
  wget -O hyper.deb  https://releases.hyper.is/download/deb
  ok "Hyper successfully downloaded"
  running "Install hyper..."
  apt install hyper.deb -y
  ok "Hyper successfully installed"
fi

mv $HOME/.hyper.js $HOME/.hyper.js.bkp
ln -s $DOTFILES/hyper/hyper.js $HOME/.hyper.js
running "Linking $HOME/.hyper.js"
bot ""
