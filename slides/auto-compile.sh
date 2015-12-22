#!/bin/sh

while inotifywait -e modify ./*tex; do
  pdflatex -output-format pdf -jobname=slides all
  pdflatex -output-format pdf -jobname=slides all
  rm *aux *log *out *toc *bib *tex\~ *.nav *bbl *blg *snm
done
