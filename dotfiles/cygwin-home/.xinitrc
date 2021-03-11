#!/bin/sh

# for some reason, cygwin/xterm will always pick us international
setxkbmap us

# CAPS suck when using vim
# the escape key is too far away
# solution: make caps also be an escape key.
setxkbmap -option caps:escape
