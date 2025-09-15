#!/bin/bash

for dir in $(find . -type d); do
    if [ -f "$dir/Makefile" ] || [ -f "$dir/makefile" ]; then
        echo "make fclean $dir"
        (cd "$dir" && make fclean > /dev/null 2>&1)
    fi
done
