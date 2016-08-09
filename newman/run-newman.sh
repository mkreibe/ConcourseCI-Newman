#!/bin/bash

echo "Checking for NPM"
echo "Node Version:   " `node -v`
echo "NPM Version:    " `npm -v`
echo "Newman Version: " `newman --version`

newman -s -C -S --environment-url https://raw.githubusercontent.com/mkreibe/ConcourseCI-Newman/master/newman/test-environment.json -url https://raw.githubusercontent.com/mkreibe/ConcourseCI-Newman/master/newman/test-collection.json

echo "Complete!"