#!/bin/bash
# can you find photo and video types rare, lossless, new. old and licensed
# Define the directory where you want to search
search_dir="${1:-.}"
# Define the directory where you want to copy the files
dest_dir="$2"
mkdir -p $dest_dir

# Find and copy media files with specific extensions
find "$search_dir" \
  \( -o -name "*.jpg" -o -name "*.jpeg" \
	-o -name "*.png" -o -name "*.gif" \
	-o -name "*.bmp" -o -name "*.tiff" \
	-o -name "*.raw" -o -name "*.cr2" \
	-o -name "*.nef" -o -name "*.orf" \
  	-o -name "*.sr2" -o -name "*.raf" \
	-o -name "*.heif" -o -name "*.heic" \
  	-o -name "*.mp4" -o -name "*.avi" \
	-o -name "*.mkv" -o -name "*.mov" \
	-o -name "*.wmv" -o -name "*.flv" \
	-o -name "*.mpg" -o -name "*.mpeg" \
	-o -name "*.3gp" -o -name "*.rm" \
  	-o -name "*.webm" -o -name "*.m4v" \
	-o -name "*.f4v" -o -name "*.ts" \) \
  -exec cp -rfv {} "$dest_dir" \;

echo -e "\a\a\a\a\a\a\a\b\b\b"
echo "All media files have been copied to $dest_dir"
