#!/bin/sh
PLACE="$(dirname "$(readlink -f "$0")")"
echo $PLACE
nw "$PLACE" "$@" &>/dev/null &
PID=$!
shift
"$@"
kill "$PID"
