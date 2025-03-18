#!/bin/bash
set -e
set -x

pandoc 01_moneycoin-whitepaper.md \
  --citeproc \
  --bibliography=01_survival_insticts_thesis_references.bib \
  --csl=chicago-author-date-16th-edition.csl \
  -o 01_survival_insticts_thesis.pdf --pdf-engine=xelatex

git status

repomix
