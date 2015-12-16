#!/bin/bash

# If running on a non travis vm (e.g vagrant) set a BUILD_DIR so we can return home later
if [[ -z "$TRAVIS_BUILD_DIR" ]]; then export TRAVIS_BUILD_DIR=$PWD; fi

sudo find /tmp/current/ -name '*.pdf' -type f -not -name _autosave* -exec convert +antialias -negate {} {}.png \;
sudo find /tmp/previous/ -name '*.pdf' -type f -not -name _autosave* -exec convert +antialias -negate {} {}.png \;
cd /tmp/current
sudo rename 's/\.pdf\.png/\.png/' *.pdf.png
- cd /tmp/previous
sudo rename 's/\.pdf\.png/\.png/' *.pdf.png
cd $TRAVIS_BUILD_DIR