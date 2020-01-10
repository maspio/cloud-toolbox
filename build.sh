#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

IMAGE_TAG="project"

docker build \
    --pull \
    --no-cache \
    -t ksandermann/cloud-toolbox:$IMAGE_TAG \
    .

#push
docker login
docker push ksandermann/cloud-toolbox:$IMAGE_TAG
