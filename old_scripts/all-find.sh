#!/bin/bash
# Define the directory where you want to search
search_dir="${1:-.}"
# Define the directory where you want to copy the files
dest_dir="$2"

mkdir -p $dest_dir

# Find and copy files with specific extensions

./documents-find.sh $@
exit 0
./media-find.sh $@

echo -e "\a\a\a\a\a\b\b\b"
echo "All document files have been copied to $dest_dir"
