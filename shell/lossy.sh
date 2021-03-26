#!/bin/bash
#Utilizes ffmpeg to recursively convert all lossless 
#FLAC files in a folder to 320kbps MP3
echo -e "What directory would you like to check:" 
read dir
cd "$dir"/
for file in *flac ; do
    echo $file
    ffmpeg -i "$file" -ab 320k "${file%.????}".mp3 
    #rm "$file" #to delete original
done
