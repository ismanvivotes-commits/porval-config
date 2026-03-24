#!/bin/bash
# Usage: ./stop-codespace.sh <codespace-name>
NAME=$1
if [ -z "$NAME" ]; then
  echo "Stopping ALL codespaces..."
  gh codespace list --json name -q '.[].name' | xargs -I{} gh codespace stop -c {}
else
  echo "Stopping $NAME..."
  gh codespace stop -c $NAME
fi
