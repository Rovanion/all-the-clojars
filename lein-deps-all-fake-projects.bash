#!/bin/bash

for folder in fake-projects/*; do
    echo Working in $folder
    cd $folder
    lein deps
    cd ../..
done
