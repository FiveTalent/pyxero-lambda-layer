#!/bin/bash -x

set -e

# Prep output directory
rm -rf layer && mkdir -p layer/python

# Build docker image
docker build -t lambda-pyxero -f Dockerfile .

# Run container and copy output files
CONTAINER=$(docker run -d lambda-pyxero false)
docker cp \
    $CONTAINER:/opt/pyxero/ layer/python/.
docker rm $CONTAINER

# Stage files for sls deployment
cp -r layer/python/pyxero/* layer/python
