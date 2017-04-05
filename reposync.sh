#!/bin/bash
ORGANIZATION='iptomar'
PROJECT='projectary-bd'
git remote add upstream git@github.com:$ORGANIZATION/$PROJECT.git
git fetch upstream
git pull upstream master
