#!/bin/bash

echo "Running post build..."

echo $UNITY_PLAYER_PATH

# Define the path where the addressables should be copied
TARGET_DIR="$UNITY_PLAYER_PATH/extra_data/addrs"

# Ensure the target directory exists
mkdir -p "$TARGET_DIR"

# Generate a test file (or replace with your actual addressables)
echo "This is a test file for post-build addressables." > test_addressable.txt

# Move the generated file to the target directory
mv test_addressable.txt "$TARGET_DIR/"

echo "Test file generated and moved to $TARGET_DIR"
