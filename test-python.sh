#!/bin/bash

# Build the testing tool.
cd reference/yescrypt-0.7.1/yescrypt/yescrypt-0.7.1/
make ref

./tester "python2 ../../../../python/yescrypt-cli.py"

if [ $? -ne 0 ]; then
    echo "FAIL."
    exit 1
fi

echo "All tests pass."
exit 0
