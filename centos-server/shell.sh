#!/bin/sh

# Shell Execute for Cygwin
if [ -x "`which cygpath > /dev/null 2>&1`" ]; then
    winpty docker exec -it centos-server bash
else
    docker exec -it centos-server bash
fi 

