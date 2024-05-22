#! /bin/bash

# Shut up.
git config --global --add safe.directory '*'

[ $(command -v gh) ] || { apt -y install gh; }

for f in $(find archives -type f); do
    gh release upload "${GH_TAG}" $f
done
