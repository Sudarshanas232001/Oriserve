#!/bin/bash

# Define the main project directory
PROJECTS_DIR="projects"

# Create the main projects directory if it doesn't exist
mkdir -p "$PROJECTS_DIR"

# Define the list of main directories
MAIN_DIRS=("facebook" "google" "meta" "oracle")

# Iterate over the main directories
for MAIN_DIR in "${MAIN_DIRS[@]}"; do
  # Define the full path for the main directory
  FULL_PATH="$PROJECTS_DIR/$MAIN_DIR"
  
  # Create the main directory
  mkdir -p "$FULL_PATH"
  
  # Remove any existing parent_folder.txt and create a new one
  echo "$MAIN_DIR" > "$FULL_PATH/parent_folder.txt"
  
  # Check if the directory is 'google' or 'meta'
  if [[ "$MAIN_DIR" == "google" || "$MAIN_DIR" == "meta" ]]; then
    # Create the 'oriserve' subdirectory inside it
    ORISERVE_PATH="$FULL_PATH/oriserve"
    mkdir -p "$ORISERVE_PATH"
  fi
done

echo "Directories and files created successfully."

