#!/bin/sh
set -eu

# latexmk reruns XeLaTeX as needed for the table of contents and references.
cd "$(dirname "$0")"

if ! command -v latexmk >/dev/null 2>&1; then
    echo 'latexmk is required to build the thesis.' >&2
    exit 1
fi
if ! command -v gs >/dev/null 2>&1; then
    echo 'Ghostscript (gs) is required to include the EPS figures.' >&2
    exit 1
fi

latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error main.tex
latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error cover.tex
