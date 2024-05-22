#! /bin/bash

# Shut up.
git config --global --add safe.directory '*'

[ $(command -v gh) ] || { apt -y install gh; }

TAG_NO_REF="$(echo "${GH_TAG}" | sed 's/refs\/tags\///')"

for f in $(find archives -type f); do
    gh release upload "${TAG_NO_REF}" $f
done
