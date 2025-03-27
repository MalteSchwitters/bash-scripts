#!/bin/sh

dir="$(dirname "$(realpath "$0")")"
branch=$($dir/select-branch.sh)

if [ -n "$branch" ]; then
    git checkout "$branch"
fi
