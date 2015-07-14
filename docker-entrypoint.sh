#!/bin/bash
set -e

if [ "$1" = 'redis-server' ]; then
	service "$@" start
fi
exec "$@"
