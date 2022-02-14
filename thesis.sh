#!/bin/bash
# generate a zip with all necessary files to write a thesis

mkdir generated_thesis_template;

cp hasel_thesis/example_thesis.tex generated_thesis_template/;
cp hasel_thesis/hasel_thesis.cls generated_thesis_template/;
cp hasel.sty generated_thesis_template/;

cp logos/logo_uzh.* generated_thesis_template/;
cp logos/logo_hasel_bw.* generated_thesis_template/;
cp logos/logo_hasel.* generated_thesis_template/;

zip -r generated_thesis_template.zip generated_thesis_template;
rm -rf generated_thesis_template
