#!/bin/bash

# Convert image files in the current directory and its subdirectories to WebP
find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) -exec sh -c 'cwebp -q 80 "$0" -o "${0%.*}.webp"' {} \;

# Delete the original image files
find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) -exec rm {} \;

# Replace references in Markdown files to use the newly converted WebP images
find . -type f -name "*.md" -exec sed -i 's/\.png/\.webp/g' {} +
