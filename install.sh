#!/usr/bin/env bash

###
# @author Felipe Brasil
###

# Ask for the administrator password upfront
sudo -v
source ./lib/colors.sh
source ./lib/enviroments.sh

main() {
  echo -e "\n"
  read -r -p "Do you want to link the Homedir files? [y|n] " response
  if valid_response $response; then
    $DOTFILES/homedir/install.sh
  else
    ok "homedir skipped..."
  fi

  echo -e "\n"
  read -r -p "You want to install Hyper.js settings? [y|n] " response
  if valid_response $response; then
    #$DOTFILES/hyper/install.sh
    echo "hyper"
  else
    ok "hyper skipped..."
  fi
}

valid_response() {
  if [[ $1 =~ (yes|y|Y|sim|s|S) ]]; then
    true
  else
    false
  fi
}

main "$@"

bot "All done"
echo -e "\n"
