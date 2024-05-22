#! /bin/bash

for f in $(find archives -type f); do
    echo gh release upload "${GH_TAG}" $f
done
