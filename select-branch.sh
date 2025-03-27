#!/bin/sh

dir="$(dirname "$(realpath "$0")")"
selectedLine=($($dir/list-branches.sh | fzf --height ~100% | xargs))
branch="${selectedLine[0]}"
echo "$branch"
