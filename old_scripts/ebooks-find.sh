#!/bin/bash
# Define the directory where you want to search
search_dir="${1:-.}"
# Define the directory where you want to copy the files
dest_dir="$2"

mkdir -p $dest_dir

# Find and copy files with specific extensions
find "$search_dir" \
 	\( -o -name "*.epub" -o -name "*.mobi" \) \
 	-exec cp -rfv {} "$dest_dir" \;

echo -e "\a\a\a\a\a\b\b\b"
echo "All document files have been copied to $dest_dir"
