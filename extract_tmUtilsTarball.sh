#!/bin/bash

if [ -d "tmCPPUtils" ]; then
    echo "ERROR: tmCPPUtils already exists!"
    exit
fi

tar -xzf tmUtils.tar.gz

# General utils
cd tmCPPUtils/generalUtils && mkdir lib && mkdir obj && make clean && make && cd ../..

# ROOT utils
cd tmCPPUtils/ROOTUtils && mkdir lib && mkdir obj && make clean && make && cd ../..
