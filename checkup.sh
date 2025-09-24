#!/bin/bash

updates=$(checkupdates)

if [[ -z "$updates" ]]; then
    echo "pkg up to date"
else
    echo "pkg upd avaliable!"
fi
