#!/bin/bash
set -e
set -x

# Find all .md files in the current directory
for mdfile in *.md; do
    # Extract the base filename without extension
    basename="${mdfile%.md}"
    
    # Convert the markdown file to PDF
    pandoc "$mdfile" \
      --citeproc \
      --csl=chicago-author-date-16th-edition.csl \
      -o "${basename}.pdf" --pdf-engine=xelatex
done

git status

repomix
