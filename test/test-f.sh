#!/bin/sh

CMD=$1
shift
for arg do
    $CMD -f $arg | diff -u --from-file ${arg}.eta.r - || exit 1
done
