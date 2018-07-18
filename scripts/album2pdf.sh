#!/bin/sh
# Convert image album to PDF
# Usage: album2pdf album_directory

# Find Images in Working Directory and convert to PDFs
find "${1}" -type f \( -iname "*.jpg" -o -iname "*.png" \) \
    -exec convert "{}" "{}.tmp.pdf" \;
# Combine PDFs
find "${1}" -type f -iname "*.tmp.pdf" -print | \
    sort | tr -s '\n' '\0' | \
    xargs -0 gs \
       -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress \
       -sOutputFile=merged.tmp.pdf
# Rename PDF to Folder Name
mv merged.tmp.pdf "${1}/../$(basename "${1}").pdf"
# Remove Temporary PDFs
find "${1}" -type f -iname "*.tmp.pdf" -exec rm -f "{}" \;
