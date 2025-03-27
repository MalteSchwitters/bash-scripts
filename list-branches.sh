#!/bin/sh

branches=$(git branch | cut -c 3-)
output=""
for branch in $branches
do
    aheadBehind=($(git rev-list --left-right --count  origin/main...$branch))
    output+="\n$branch;${aheadBehind[0]};|;${aheadBehind[1]}"
done
echo $output | column -t -s ';'
