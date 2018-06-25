#!/bin/bash

ls pdf/ | while read CURRENT_FILENAME; do
NEW_FOLDERNAME=$(echo $CURRENT_FILENAME | awk -F "--" '{print $1}' | tr -d 0-9)
NEW_FILENAME=$(echo $CURRENT_FILENAME | awk -F "--" '{print $2}')
echo "$NEW_FOLDERNAME/$NEW_FILENAME"
mkdir -p "$NEW_FOLDERNAME"
cp "pdf/$CURRENT_FILENAME" "$NEW_FOLDERNAME/$NEW_FILENAME"  
done
