#!/usr/bin/env zsh

# Retries a command on failure.
# $1 - the max number of attempts
# $2... - the command to run
function retry { local n=1; local max=$1; shift; while true; do "$@" && break || { local error_code=$?; if [[ $n -lt $max ]]; then ((n++)); echo "Failed. Will try attempt $n/$max"; sleep $n; else echo "Failed after $n attempts"; return $error_code; fi }; done }

function jwtd {
    if [[ -x $(command -v jq) ]]; then
         [ $# -ge 1 ] && input="$1" || input="$(cat -)"
         jq -R 'split(".") | .[0],.[1] | @base64d | fromjson' <<< "${input}"
         echo "Signature: $(echo "${input}" | awk -F'.' '{print $3}')"

    fi
}

function certinfo {
  [ $# -ge 1 ] && input="$(cat $1)" || input="$(cat -)"
  echo "$input" | openssl x509 -noout -text
}

function servercert {
  server="$1"
  port="${2:-443}"
  echo | openssl s_client -connect "${server}:${port}" | openssl x509 -noout -text
}

function get_route {
  address="$1"
  ip route get $(getent hosts $address | awk '{print $1}')
}
