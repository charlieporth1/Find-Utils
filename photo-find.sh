#!/bin/bash
# can you find photo and video types rare, lossless, new. old and licensed
# Define the directory where you want to search
search_dir="${1:-.}"
# Define the directory where you want to copy the files
dest_dir="$2"
mkdir -p $dest_dir

find_files=(
	"*.jpg"
	"*.jpeg"
	"*.png"
	"*.gif"
	"*.bmp"
	"*.tiff"
	"*.raw"
	"*.cr2"
	"*.nef"
	"*.orf"
  	"*.sr2"
	"*.raf"
	"*.heif"
	"*.heic"
)

# Find and copy media files with specific extensions
for find_file in ${find_files[@]}
do
	find "$search_dir" \
		-name $find_file \
  		-exec cp -rfv {} "$dest_dir";
done

echo -e "\a\a\a\a\a\a\a\b\b\b"
echo "All media files have been copied to $dest_dir"
