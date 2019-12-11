#!/bin/bash

touch .zprofile
echo "alias g=git" >>~/.zprofile
echo "alias k=kubectl" >>~/.zprofile
echo "alias c2=connectToEC2" >>~/.zprofile
echo 'export GOPATH=${HOME}/go' >>~/.zprofile
echo 'export GOROOT="$(brew --prefix golang)/libexec"' >>~/.zprofile
echo 'export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"' >>~/.zprofile
echo 'alias ppp="find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pp \;"' >>~/.zprofile
