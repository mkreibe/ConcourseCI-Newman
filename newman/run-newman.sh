#!/bin/bash

echo "Checking for NPM"
echo "  Collection URL:  " $COLLECTION_URL
echo "  Environment URL: " $ENVIRONMENT_URL

echo "Node Version:       " `node -v`
echo "NPM Version:        " `npm -v`
echo "Old Newman Version: " `newman --version`

echo "  Install newest newman version."
npm install newman --global --no-spin

echo "New Newman Version: " `newman --version`

# using the v3 syntax.
newman run $1 -e $2 --bail --no-color

echo "Complete!"