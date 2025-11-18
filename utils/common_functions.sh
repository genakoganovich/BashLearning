#!/bin/bash
function greet {
    local name="$1"
    echo "Hello, $name!"
}

function check_dir {
    local dir="$1"
    if [ -d "$dir" ]; then
        echo "Directory $dir exists"
    else
        echo "Directory $dir does not exist"
    fi
}
