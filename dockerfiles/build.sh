#!/bin/bash

set -e # set the shell to exit immediately if a command exits with a non-zero status

./autogen.sh
./configure
make
