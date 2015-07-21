#!/bin/bash
set -e

VERSION=$1

echo "Building Docker image: ingeus/limesurvey:$VERSION"

docker build -t ingeus/limesurvey:$VERSION .

