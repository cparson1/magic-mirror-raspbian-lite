#!/bin/bash

if which node > /dev/null
then

    info "node is installed, skipping node setup..."

else

    cd ~/

    info "Installing node"

    curl -fsSL https://deb.nodesource.com/setup_19.x | bash - &&\
    sudo apt-get install -y nodejs

fi

echo "Node version:"
node -v

echo "NPM version:"
npm -v
