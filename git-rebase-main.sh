#!/usr/bin/env bash

git stash
git checkout main
git pull --all --prune
gco - 
git rebase main
git stash pop
