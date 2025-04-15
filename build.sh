#!/bin/bash
docker build -t nepali-date .
docker run --rm -p 5000:5000 nepali-date
