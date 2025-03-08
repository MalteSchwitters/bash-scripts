#!/usr/bin/env bash

branch=$(git branch | fzf | xargs)
if [ -n "$branch" ]; then
    git checkout "$branch"
fi
