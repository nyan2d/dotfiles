#!/bin/zsh

killall -q polybar

polybar main &
polybar slave &
