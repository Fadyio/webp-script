#!/bin/bash

for file in *.{jpg,jpeg,png}; do
  cwebp -q 80 "$file" -o "${file%.*}.webp"
done

# delete the fils with jpg,jpeg,png after convert
find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) -delete

find . -type f -name "*.md" -exec sed -i 's/\.png/\.webp/g' {} +
