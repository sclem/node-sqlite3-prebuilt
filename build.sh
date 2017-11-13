#!/bin/bash

set +e
set -x

npm install -g npm@$NPM_VERSION
npm install -g node@$NODE_VERSION
npm install -g nw-gyp@latest

npm init -y

npm -v
node -v
nw-gyp -v

npm install sqlite3 --runtime=node-webkit --target=$NWJS_VERSION --target-arch=x64 --target_platform=win32
