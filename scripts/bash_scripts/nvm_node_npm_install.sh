#!/bin/bash

# Install nvm, node.js, and npm
install_npm="curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash && \
src && nmv --version && nvm install node && sync &&
node --version && nvm install --lts && echo 'Your currently-installed versions of Node.js are:' && nmv ls && echo 'Change the currently active version with `nvm use <version_number>`. I.E., to use 10.16.3, type `nvm use 10.6.3`"

