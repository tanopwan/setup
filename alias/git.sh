#!/bin/bash

git config --global alias.c commit
git config --global alias.a 'add -A'
git config --global alias.s status
git config --global alias.p push
git config --global alias.fuckit 'reset --hard'
git config --global alias.pp '!git fetch --prune --all && git pull --all'
git config --global alias.eee '!git add -A && git commit -m "quick commit" . && git push'
git config --global alias.ee '!git add -A && git commit'
git config --global alias.m2b '!git checkout master && git fetch --prune && git pull && git branch perseusbranch && git checkout && git checkout perseusbranch'