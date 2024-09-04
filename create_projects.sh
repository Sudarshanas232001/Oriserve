#!/bin/bash

# Define the main project directory
PROJECTS_DIR="projects"

# Create the main projects directory if it doesn't exist
mkdir -p "$PROJECTS_DIR"

# Define the list of subdirectories
SUBDIRS=("facebook" "google/oriserve" "meta/oriserve" "oracle")

# Iterate over the subdirectories
for SUBDIR in "${SUBDIRS[@]}"; do
  # Create the subdirectory
  mkdir -p "$PROJECTS_DIR/$SUBDIR"
  
  # Check if 'oriserve' is part of the path and is the last directory
  if [[ "$SUBDIR" == "google/oriserve" || "$SUBDIR" == "meta/oriserve" ]]; then
    # Extract the parent folder name
    PARENT_DIR=$(basename "$(dirname "$PROJECTS_DIR/$SUBDIR")")
    
    # Create a file inside the 'oriserve' folder with the parent folder name
    echo "$PARENT_DIR" > "$PROJECTS_DIR/$SUBDIR/parent_folder.txt"
  fi
done

echo "Directories and files created successfully."

