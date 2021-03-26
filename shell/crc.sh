#!/bin/bash
#Simple script to check data-integrity for all
#Matroska files in a folder
echo -e "What directory would you like to check:" 
read dir
cd "$dir"/
for file in *mkv ; do
    echo $file
    crc32 "$file"
done


