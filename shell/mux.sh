#!/bin/bash
#Simple script to bulk mux .ass &
#Matroska files in a folder. Intended for anime.
echo -e "Select folder to mux from:" 
read dir
cd "$dir"/
for file in *mp4 ; do
    usagi=${file%.???}
    echo $usagi is now processing...
    mkvmerge -o "$usagi.mkv" "$file" --language "0:eng" "${usagi}.ass" --default-track "0:yes" --track-name "0:English" 
    echo ==============================   
done
