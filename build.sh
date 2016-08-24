#!/bin/sh

runestone build
rm -r ../../static/helloworld/
mv build/helloworld/ ../../static/
