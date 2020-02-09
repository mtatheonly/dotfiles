#!/usr/bin/env zsh

# Retries a command on failure.
# $1 - the max number of attempts
# $2... - the command to run
function retry { local n=1; local max=$1; shift; while true; do "$@" && break || { local error_code=$?; if [[ $n -lt $max ]]; then ((n++)); echo "Failed. Will try attempt $n/$max"; sleep $n; else echo "Failed after $n attempts"; return $error_code; fi }; done }
