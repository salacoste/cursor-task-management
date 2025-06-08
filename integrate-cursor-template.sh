#!/bin/bash

# This script integrates the files from this repository into any target project directory.
# Usage: ./integrate-cursor-template.sh /path/to/target/project

set -e

if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/target/project"
  exit 1
fi

TARGET_DIR="$1"
REPO_URL="https://github.com/salacoste/cursor-task-management"
TMP_DIR=$(mktemp -d)
ZIP_URL="$REPO_URL/archive/refs/heads/main.zip"
ZIP_FILE="$TMP_DIR/repo.zip"

# Download the repository as a zip archive
echo "Downloading repository archive..."
curl -L "$ZIP_URL" -o "$ZIP_FILE"

# Unzip the archive
echo "Unzipping archive..."
unzip -q "$ZIP_FILE" -d "$TMP_DIR"

# Find the extracted folder (should be repo-main)
SRC_DIR=$(find "$TMP_DIR" -maxdepth 1 -type d -name "*cursor-task-management-*")

# Copy all files except .git and .github to the target directory
echo "Copying files to $TARGET_DIR ..."
rsync -av --progress "$SRC_DIR"/ "$TARGET_DIR"/ --exclude '.git' --exclude '.github'

# Clean up temporary files
rm -rf "$TMP_DIR"

echo "Done! All files from the repository have been integrated into $TARGET_DIR" 