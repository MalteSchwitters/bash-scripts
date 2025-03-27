#!/bin/sh

dir="$(dirname "$(realpath "$0")")"
branch=$($dir/select-branch.sh)

if [ -n "$branch" ]; then
    read -p "Delete the branch '$branch'? (y/n): " confirm
    if [ "$confirm" = "y" ]; then
        git branch -D "$branch"
    else
        echo "Branch deletion canceled."
    fi
fi
