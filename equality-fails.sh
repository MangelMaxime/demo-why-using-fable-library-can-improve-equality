#!/bin/bash
set -e -x

cwd=$(pwd)

rm -rf fableBuild

dotnet fable src/ProjectA \
    -o fableBuild/project-a \
    --noCache

dotnet fable src/ProjectB \
    -o fableBuild/project-b \
    --noCache

node script.js
