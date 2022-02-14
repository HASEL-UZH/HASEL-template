#!/bin/bash
# generate a zip with all necessary files to write a research proposal

mkdir generated_proposal_template;
mkdir generated_proposal_template/sections;

cp hasel_proposal/example_proposal.tex generated_proposal_template/;
cp hasel_proposal/hasel_proposal.cls generated_proposal_template/;
cp -r hasel_proposal/sections/ generated_proposal_template/sections/;

#cp hasel.sty generated_proposal_template/;  #  not needed

cp logos/logo_hasel_bw.* generated_proposal_template/;
cp logos/logo_uzh.* generated_proposal_template/;

zip -r generated_proposal_template.zip generated_proposal_template;
rm -rf generated_proposal_template
