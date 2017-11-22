#!/bin/bash

set +e
set -x

if [[ $(npm -v) != "$NPM_VERSION" ]]; then
    npm install -g npm@$NPM_VERSION
fi

if [[ $(node -v) != "v$NODE_VERSION" ]]; then
    npm install -g node@$NODE_VERSION
fi
npm install -g nw-gyp@latest
npm install -g node-pre-gyp@latest

npm init -y

npm install sqlite3 --runtime=node-webkit --target=$NWJS_VERSION --target_arch=$ARCH --target_platform=win32

cd node_modules/sqlite3

node-pre-gyp --runtime=node-webkit --target=$NWJS_VERSION --target_arch=$ARCH package
