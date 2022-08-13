#!/usr/bin/env bash
export POSTGRES_USER=${HA_USER}
export POSTGRES_PASSWORD=${HA_PASSWORD}
export POSTGRES_DATABASE=${HA_DATABASE}

exec docker-entrypoint.sh "$@"
