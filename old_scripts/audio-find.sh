#!/bin/bash
# Define the directory where you want to search
search_dir="${1:-.}"
# Define the directory where you want to copy the files
dest_dir="$2"

mkdir -p $dest_dir

# Find and copy media files with specific extensions
find "$search_dir"  \( -o -name "*.mp3" -o -name "*.wav" \
	-o -name "*.flac" -o -name "*.aac" \
  	-o -name "*.ogg" -o -name "*.wma" \
	-o -name "*.m4a" -o -name "*.alac" \
  	-o -name "*.ape" -o -name "*.dsf" \
	-o -name "*.dff" -o -name "*.tta" \
  	-o -name "*.opus" -o -name "*.aiff" \
	-o -name "*.aif" -o -name "*.ra" \
	-o -name "*.ram" -o -name "*.mid" \
	-o -name "*.midi" -o -name "*.m4r" \
	-o -name "*.caf" -o -name "*.custom1" \
	-o -name "*.custom2" \) \
  -exec cp -rfv {} "$dest_dir" \;

echo -e "\a\a\a\a\a\a\a\b\b\b"
echo "All media files have been copied to $dest_dir"
