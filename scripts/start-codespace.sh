#!/bin/bash
# Usage: ./start-codespace.sh <repo-name>
REPO=${1:-android-lab}
echo "Starting Codespace for $REPO..."
gh codespace create --repo ismanvivotes-commits/$REPO --machine basicLinux32gb --display-name $REPO -b main
gh codespace list
