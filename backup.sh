#!/bin/bash
# Script Name: backup.sh
# Purpose: Create a backup of a given directory with a timestamp.
# Author: Harsh
# Date: $(date +%Y-%m-%d)

SOURCE_DIR="$1"
BACKUP_DIR="$HOME/backup_$(date +%Y-%m-%d_%H-%M-%S)"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist."
    exit 1
fi

# Create backup
mkdir -p "$BACKUP_DIR"
cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"

echo "Backup created at: $BACKUP_DIR"

