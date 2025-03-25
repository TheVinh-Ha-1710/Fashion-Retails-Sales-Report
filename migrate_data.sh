#!/bin/bash

# Variables
SOURCE_FOLDER=$1
CONTAINER_NAME=$2
DEST_FOLDER=$3

# Check if the source folder exists
if [ ! -d "$SOURCE_FOLDER" ]; then
    echo "Error: Source folder '$SOURCE_FOLDER' does not exist."
    exit 1
fi

# Check if the container is running
if ! docker ps --format '{{.Names}}' | grep -q "$CONTAINER_NAME"; then
    echo "Error: Container '$CONTAINER_NAME' is not running."
    exit 1
fi

# Copy only the contents of the source folder to the container
echo "Copying contents of '$SOURCE_FOLDER' to container '$CONTAINER_NAME' at '$DEST_FOLDER'..."
docker cp "$SOURCE_FOLDER"/. "$CONTAINER_NAME:$DEST_FOLDER"

# Confirm success
if [ $? -eq 0 ]; then
    echo "Contents of '$SOURCE_FOLDER' copied successfully to '$CONTAINER_NAME:$DEST_FOLDER'."
else
    echo "Error: Failed to copy folder contents."
    exit 1
fi