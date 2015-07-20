#!/bin/bash
set -e
echo "Building Docker image: limesurvey"

docker build -t ingeus/limesurvey:1.0 .
