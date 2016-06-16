#!/bin/bash

for d in */;do
    if [[ -d "$d" && ! -L "$f" ]]; then
        cd $d
        echo "Pulling in $d"
        git pull
        cd ..
    fi
done

