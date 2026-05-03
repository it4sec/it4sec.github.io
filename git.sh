#!/bin/bash

# Ask for user input
read -p "Enter commit message: " user_input

# Validate input (optional but recommended)
if [ -z "$user_input" ]; then
  echo "Commit message cannot be empty."
  exit 1
fi

# Execute git commands
git add .
git commit -m "$user_input"
git push -u origin main
