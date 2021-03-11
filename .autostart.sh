#!/bin/bash

[[ $(pgrep compton) ]] || compton -b --backend glx --vsync opengl-swc
[[ $(pgrep albert) ]] || albert &
numlockx on
waw
