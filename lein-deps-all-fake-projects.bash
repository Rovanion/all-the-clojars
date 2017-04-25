#!/bin/bash
base_dir=$(dirname $(realpath $0))

echo $base_dir

for project_file in $(find fake-projects/ -iname project.clj); do
    folder=$(dirname ${project_file})
    echo Working in $folder
    cd $folder
    lein deps
    cd $base_dir
done
