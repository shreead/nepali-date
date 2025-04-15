#!/bin/bash

# build locally
docker build -t nepali-date:latest .

# run temporarily to test
docker run --rm -p 5000:5000 nepali-date
