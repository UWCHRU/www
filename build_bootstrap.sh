#!/usr/bin/env bash

echo "copy variables.less file"
cp variables.less bootstrap/less/
echo "changing to bootstrap dir for build"
cd bootstrap
grunt
cp dist/css/* ../chru_dot_edu/chru_dot_edu/static/css/
echo "returning to dir"
cd ..
echo "done building css for CHRU webpage"
