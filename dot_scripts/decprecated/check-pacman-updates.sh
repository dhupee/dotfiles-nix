#!/bin/bash

# Check for available updates
updates=$(checkupdates)

# If there are no updates, exit
if [[ -z "$updates" ]]; then
  echo "No updates available."
  exit 0
fi

# Count number of available updates
count=$(echo "$updates" | wc -l)

# Print message with number of available updates
echo "There are $count updates available:"
echo
echo "$updates"
echo

# Prompt user to update
read -p "Do you want to update? [y/N] " choice

case "$choice" in
  y|Y )
    # Update packages
    sudo pacman -Syu
    ;;
  * )
    echo "Update cancelled."
    exit 0
    ;;
esac
