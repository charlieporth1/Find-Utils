#!/bin/bash
# Define the directory where you want to search
search_dir="${1:-.}"
# Define the directory where you want to copy the files
dest_dir="$2"

mkdir -p $dest_dir

# Find and copy media files with specific extensions
./photo-and-video-find.sh $@
./audio-find.sh $@

echo -e "\a\a\a\a\a\a\a\b\b\b"
echo "All media files have been copied to $dest_dir"
