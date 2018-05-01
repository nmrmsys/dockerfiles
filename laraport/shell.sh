#!/bin/sh

# Shell Execute for Cygwin
if [ -x "`which cygpath`" ]; then
    winpty docker exec -it laraport sh
else
    docker exec -it laraport sh
fi 

