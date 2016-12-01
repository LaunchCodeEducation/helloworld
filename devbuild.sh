#!/bin/sh

runestone build
rm -rf ../../static/helloworld/
cp -R build/helloworld ../../static/
