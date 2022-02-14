#!/bin/bash
# generate a zip with all necessary files to write a research proposal

mkdir generated_proposal_template;
mkdir generated_proposal_template/sections;

cp proposal/example_proposal.tex generated_proposal_template/;
cp proposal/hasel_proposal.cls generated_proposal_template/;
cp -r proposal/sections/ generated_proposal_template/sections/;

#cp hasel.sty generated_proposal_template/;  #  not needed

cp logos/logo_hasel_bw.* generated_proposal_template/;
cp logos/logo_uzh.* generated_proposal_template/;

zip -r generated_proposal_template.zip generated_proposal_template;
rm -rf generated_proposal_template
