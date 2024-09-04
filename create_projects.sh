#!/bin/bash

# Define the root directory for projects
ROOT_DIR="projects"

# Create the root directory if it does not exist
mkdir -p "$ROOT_DIR"

# List of project directories to be created
project_dirs=("facebook" "google" "meta" "oracle")

# Iterate over each project directory
for project in "${project_dirs[@]}"; do
  # Define the full path to the project directory
  project_path="$ROOT_DIR/$project"
  
  # Create the project directory
  mkdir -p "$project_path"
  
  # Check if the 'oriserve' directory exists within the project directory
  if [ ! -d "$project_path/oriserve" ]; then
    # Create 'oriserve' directory
    mkdir "$project_path/oriserve"
    
    # Create a file in the 'oriserve' directory with the project name
    echo "$project" > "$project_path/oriserve/project_name.txt"
  fi
done

echo "Directories and files have been created successfully."
