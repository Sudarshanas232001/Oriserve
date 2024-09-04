#!/bin/bash

# Base directory to start the search
BASE_DIR="projects"

# Text to be added inside test.txt
TEXT_CONTENT="This is the test file inside the oriserve directory."

# Search for 'oriserve' directories within the base directory
find "$BASE_DIR" -type d -name "oriserve" | while read -r oriserve_dir; do
  # Define the path to the test.txt file
  test_file="$oriserve_dir/test.txt"
  
  # Create the test.txt file and add text to it
  echo "$TEXT_CONTENT" > "$test_file"
done

