#!/bin/bash

# read version
version=`cat VERSION`
echo "version: $version"

# tag
docker tag nepali-date:latest ghcr.io/shreead/nepali-date:$version

# push
docker push ghcr.io/shreead/nepali-date:atest
docker push ghcr.io/shreead/nepali-date:$version
