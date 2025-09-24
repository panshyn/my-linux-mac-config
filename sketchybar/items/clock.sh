#!/usr/bin/env bash

COLOR="$WHITE"

sketchybar --add item clock right \
  --set clock \
    update_freq=1 \
    icon.drawing=off \
    label.color="$COLOR" \
    label.padding_left=6 \
    label.padding_right=16 \
    script="$PLUGIN_DIR/clock.sh"

sketchybar --add item clock_sep right \
  --set clock_sep \
    label="|" \
    label.color="$COLOR" \
    icon.drawing=off \
    label.padding_left=2 \
    label.padding_right=6 \
    background.drawing=off
