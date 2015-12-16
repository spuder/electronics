#!/bin/bash

# Download plot script from spencers gists. Intentionally hosted externally so it is consistant accross commits/builds
sudo curl -s https://gist.githubusercontent.com/spuder/4a76e42f058ef7b467d9/raw -o /tmp/plot_board.py
sudo chmod +x /tmp/plot_board.py