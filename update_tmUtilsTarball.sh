#!/bin/bash

# Remove backup files
for file in `find tmCPPUtils -type f -name "*~"`; do
    echo "Removing ${file}" && rm ${file}
done

# Remove tarball if it already exists
rm -f tmUtils.tar.gz

# Create backup
tar -czf tmUtils.tar.gz tmPyUtils/*.py tmCPPUtils/generalUtils/Makefile tmCPPUtils/generalUtils/include/*.h tmCPPUtils/generalUtils/src/*.cpp tmCPPUtils/ROOTUtils/Makefile tmCPPUtils/ROOTUtils/include/*.h tmCPPUtils/ROOTUtils/src/*.cpp
