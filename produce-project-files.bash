#!/bin/bash

mkdir -p fake-projects
cd fake-projects
while read dep; do
    libName=$(echo $dep | sed -r 's|\[(.+) ".+"]|\1|')
    echo Working on $libName.
    mkdir -p $libName
    sed "s|\[\]|\[$dep\]|" ../project.clj > $libName/project.clj
done < ../only-latest.edn
