#!/bin/bash

git config --global alias.c commit
git config --global alias.a 'add -A'
git config --global alias.s status
git config --global alias.p push
git config --global alias.fuckit 'reset --hard'
git config --global alias.pp '!git fetch && git pull'
git config --global alias.ee '!git add -A && git commit -m \"quick commit\"" . && git push origin'