#!/bin/sh

sed -n "s/\[profile \(.*\)\]/\1/gp" ~/.aws/config | fzf
