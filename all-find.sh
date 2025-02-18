#!/bin/bash
# cd to script dir 
script_dir=$0
script_dir=$(realpath $script_dir)
script_dir=$(dirname $script_dir)
cd $script_dir

# Define the directory where you want to search
search_dir="${1:-.}"
# Define the directory where you want to copy the files
dest_dir="$2"

mkdir -p $dest_dir

# Find and copy files with specific extensions

./documents-find.sh $1 $2/documents
./media-find.sh $1 $2/media

echo -e "\a\a\a\a\a\b\b\b"
echo "All document files have been copied to $dest_dir"
