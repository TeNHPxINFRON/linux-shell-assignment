#!/bin/bash
# Script Name: download.sh
# Purpose: Download a file from the internet into Downloads folder.
# Author: Harsh
# Date: $(date +%Y-%m-%d)

URL="$1"
DEST="$HOME/Downloads"

mkdir -p "$DEST"

if [ -z "$URL" ]; then
    echo "Usage: ./download.sh <URL>"
    exit 1
fi

wget -P "$DEST" "$URL"

echo "File downloaded to $DEST"
