#!/bin/bash

if which node > /dev/null
then

    info "node is installed, skipping node setup..."

else

    # taken from the the official magic mirror installer script:
    # https://github.com/MichMich/MagicMirror/blob/v2.10.1/installers/raspberry.sh

    cd ~/

    info "Installing node"

    curl -fsSL https://deb.nodesource.com/setup_19.x | bash - &&\
    sudo apt-get install -y nodejs

fi

echo "Node version:"
node -v

echo "NPM version:"
npm -v
