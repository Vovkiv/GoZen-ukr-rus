#!/bin/bash

echo "Generating *.mo files"

for po_file in *.po; do
  if [ -e "$po_file" ]; then
    # Generate .mo file
    msgfmt -o "${po_file%.po}.mo" "$po_file"
    echo "Generated: ${po_file%.po}.mo"
  fi
done

mv *.mo ../

echo "Generating localization files complete!"