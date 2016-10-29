#!/bin/sh

runestone build
rm -rf ../../static/helloworld/
sudo cp -R build/helloworld /var/public/runestone/static/
sudo chown -R nginx /var/public/runestone/static/helloworld
