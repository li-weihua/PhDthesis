#!/bin/sh
set -eu

cd "$(dirname "$0")"

if ! command -v latexmk >/dev/null 2>&1; then
    echo 'latexmk is required to clean the thesis build files.' >&2
    exit 1
fi

# Keep the generated PDFs; latexmk removes the main build files.
latexmk -c main.tex cover.tex
# LaTeX writes separate auxiliary files for \include chapters.
rm -f chapter/*.aux
