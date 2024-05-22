#! /bin/bash

[ $(command -v gh) ] || { apt -y install gh; }

for f in $(find archives -type f); do
    gh release upload "${GH_TAG}" $f
done
