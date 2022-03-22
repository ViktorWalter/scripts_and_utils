#!/bin/bash
if [ $# -lt 1 ]; then
  echo "Please provide PDF file."
  exit 1
fi

pdf_source=$1

filename=$(basename -- "$pdf_source")
extension="${filename##*.}"
filename="${filename%.*}"

if [ "${extension,,}" != "pdf" ]; then #converted to lowercase
  echo "The provided file is not a PDF."
  exit 1
fi
# echo $filename
# echo $extension
# echo $pdf_source

gs -sDEVICE=pdfwrite -dPDFA=true -dPDFACompatibilityPolicy=1 -dCompatibilityLevel=1.4 -dPrinted=false -dPreserveAnnots=true -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/ebook -o ${filename}_s.pdf ${pdf_source}
# gs -sDEVICE=pdfwrite -dPDFSETTINGS=/ebook -o wtf_s.pdf ${pdf_source}
