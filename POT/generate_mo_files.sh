#!/bin/bash

echo "Generating *.mo files"
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -d "$dir" ]; then
  echo "Error: The specified folder does not exist."
  exit 1
fi

for po_file in "$dir"/*.po; do
  if [ -e "$po_file" ]; then
    # Generate .mo file
    msgfmt -o "${po_file%.po}.mo" "$po_file"
    echo "Generated: ${po_file%.po}.mo"
  fi
done


echo "Generating localization files complete!"