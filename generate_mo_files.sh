#!/bin/bash

echo "Generating *.mo files"

pushd $(dirname "$0")/po_files
for po_file in *.po; do
  if [ -e "$po_file" ]; then
    # Generate .mo file
    msgfmt -o "../../${po_file%.po}.mo" "$po_file"
    echo "Generated: ${po_file%.po}.mo"
  fi
done
popd

echo "Generating localization files complete!"