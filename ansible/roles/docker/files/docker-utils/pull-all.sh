#!/usr/bin/env bash

set -e

for compose_file in /opt/**/docker-compose.yml; do
    docker-compose -f $compose_file pull --parallel
done
