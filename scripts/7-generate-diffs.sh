#!/bin/bash
- mkdir /tmp/diff
- for f in /tmp/current/*.png; do sudo composite -stereo 0  /tmp/current/$(basename $f) /tmp/previous/$(basename $f) /tmp/diff/$(basename $f); done
