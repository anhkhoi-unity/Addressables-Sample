#!/bin/bash

echo "Running post build..."

echo "$WORKSPACE/.build/last/$BUILD_TARGET/extra_data/addrs"

# Define the path where the addressables should be copied
TARGET_DIR="$WORKSPACE/.build/last/$BUILD_TARGET/extra_data/addrs

# Ensure the target directory exists
mkdir -p "$WORKSPACE/.build/last/$BUILD_TARGET/extra_data/addrs

# Generate a test file (or replace with your actual addressables)
echo "This is a test file for post-build addressables." > test_addressable.txt

# Move the generated file to the target directory
mv test_addressable.txt "$TARGET_DIR/"

echo "Test file generated and moved to $TARGET_DIR"
