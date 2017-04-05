#!/bin/bash
ORGANIZATION='iptomar'
PROJECT='projectary-bd'
git remote add upstream git@github.com:$ORGANIZATION/$PROJECT.git
git stash
git fetch upstream
git pull upstream master
git stash pop
