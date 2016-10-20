#!/bin/sh

runestone build
rm -rf ../../static/helloworld/
mv build/helloworld/ ../../static/
