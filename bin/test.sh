#!/bin/bash

. bin/commons.sh

PACKAGE="./valkiria ./routes ./proc ./dbus"

if [ -d "$GOPATH" ]; then
    cd $GOPATH/src/github.com/Stratio/valkiria
    $GOPATH/bin/godep go test -v ${PACKAGE}
else
    echo "target file not available, please run 'make compile' first"
fi
