#!/bin/bash

touch .bash_profile
echo "alias k=kubectl" >>~/.bash_profile
echo "alias c2=connectToEC2" >>~/.bash_profile
echo 'export GOPATH=${HOME}/go' >>~/.bash_profile
echo 'export GOROOT="$(brew --prefix golang)/libexec"' >>~/.bash_profile
echo 'export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"' >>~/.bash_profile