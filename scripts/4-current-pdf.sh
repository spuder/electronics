#!/bin/bash

# If running on a non travis vm (e.g vagrant) set a BUILD_DIR so we can return home later
if [[ -z "$TRAVIS_BUILD_DIR" ]]; then export TRAVIS_BUILD_DIR=$PWD; fi

sudo find $TRAVIS_BUILD_DIR -name '*.kicad_pcb' -type f -not -name _autosave* -exec python /tmp/plot_board.py {} /tmp/after \;
