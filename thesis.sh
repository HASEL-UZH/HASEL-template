#!/bin/bash
# generate a zip with all necessary files to write a thesis

mkdir seal_thesis_template;
cp seal_thesis/example_thesis.tex seal_thesis_template/;
cp seal_thesis/seal_thesis.cls seal_thesis_template/;
cp seal.sty seal_thesis_template/;
cp logos/seal_bw.* seal_thesis_template/;
cp logos/logo_uzh.* seal_thesis_template/;
cp logos/seal_blue.* seal_thesis_template/;
zip -r seal_thesis_template.zip seal_thesis_template;
rm -rf seal_thesis_template