#!/usr/bin/env bash

COLOR="$WHITE"

sketchybar --add item cpu right \
  --set cpu \
    update_freq=3 \
    icon.color="$COLOR" \
    icon.padding_left=6 \
    icon.padding_right=6 \
    label.color="$COLOR" \
    label.padding_left=6 \
    label.padding_right=6 \
    script="$PLUGIN_DIR/cpu.sh"

#sketchybar --add item cpu_sep right \
  --set cpu_sep \
    label="|" \
    label.color="$COLOR" \
    icon.drawing=off \
    label.padding_left=0 \
    label.padding_right=6 \
    background.drawing=off
