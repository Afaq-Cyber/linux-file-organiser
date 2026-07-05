#!/bin/bash

# -----------------------------------------------
# Linux File Organiser
# Sorts files in a folder by their extension
# Author: Afaq Ali
# -----------------------------------------------

# The folder to organise (defaults to current folder)
TARGET_DIR="${1:-.}"

echo "Starting file organiser..."
echo "Target folder: $TARGET_DIR"
echo "-----------------------------------------------"

# Count how many files will be moved
MOVED=0

# Loop through every file in the target folder
for FILE in "$TARGET_DIR"/*; do

    # Skip if it's a folder, not a file
    if [ -d "$FILE" ]; then
        continue
    fi

    # Get the file extension (e.g. txt, jpg, pdf)
    EXTENSION="${FILE##*.}"

    # Convert extension to lowercase
    EXTENSION=$(echo "$EXTENSION" | tr '[:upper:]' '[:lower:]')

    # Skip files with no extension
    if [ "$EXTENSION" = "$FILE" ]; then
        echo "Skipping (no extension): $FILE"
        continue
    fi

    # Create a folder for this extension if it doesn't exist
    DEST_FOLDER="$TARGET_DIR/$EXTENSION"
    if [ ! -d "$DEST_FOLDER" ]; then
        mkdir -p "$DEST_FOLDER"
        echo "Created folder: $EXTENSION/"
    fi

    # Move the file into that folder
    mv "$FILE" "$DEST_FOLDER/"
    echo "Moved: $(basename $FILE) → $EXTENSION/"
    MOVED=$((MOVED + 1))

done

echo "-----------------------------------------------"
echo "Done. $MOVED file(s) organised."
