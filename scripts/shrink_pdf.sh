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
echo $filename
echo $extension

ps2pdf -dPDFSETTINGS=/ebook $pdf_source ${filename}_s.pdf
