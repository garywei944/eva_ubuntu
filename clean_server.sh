#!/bin/bash

cd ~ || exit
rm -fr .icons .themes

cd .config
rm -fr awesome qtile terminator autostart.sh nautiterm.yml

rm -fr ../clean_server.sh

