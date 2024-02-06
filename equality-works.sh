#!/bin/bash
set -e -x

cwd=$(pwd)

rm -rf fableBuild

dotnet fable src/ProjectA \
    -o fableBuild/project-a \
    --noCache \
    --fableLib fable-library

dotnet fable src/ProjectB \
    -o fableBuild/project-b \
    --noCache \
    --fableLib fable-library

node script.js
