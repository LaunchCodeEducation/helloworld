#!/bin/sh

runestone build
sudo cp -R build/helloworld /var/public/runestone/static/
sudo chown -R nginx /var/public/runestone/static/helloworld
