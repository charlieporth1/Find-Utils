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

find_files=(
	"*.doc" 
	"*.docx"
	"*.ppt"
	"*.pptx"
	"*.xlsx"
	"*.xls"
)
# Find and copy files with specific extensions

for find_file in ${find_files[@]}
do
	find "$search_dir"  \
		-name $find_file
  		-exec cp -rfv {} "$dest_dir" \;
done


echo -e "\a\a\a\a\a\b\b\b"
echo "All document files have been copied to $dest_dir"
