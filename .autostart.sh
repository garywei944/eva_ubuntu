#!/bin/bash

numlockx on
killall compton && compton -b --backend glx --vsync opengl-swc
waw
albert &
