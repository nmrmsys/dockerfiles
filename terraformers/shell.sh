#!/bin/sh

# Shell Execute for Cygwin
if [ -x "`which cygpath`" ]; then
    winpty docker exec -it terraformers sh
else
    docker exec -it terraformers sh
fi 

