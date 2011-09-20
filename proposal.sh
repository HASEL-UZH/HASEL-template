#!/bin/bash
# generate a zip with all necessary files to write a research proposal

mkdir seal_proposal_template;
mkdir seal_proposal_template/sections;
cp research_proposal/research_proposal.tex seal_proposal_template/;
cp research_proposal/seal_phd_proposal.cls seal_proposal_template/;
cp -r research_proposal/sections/ seal_proposal_template/sections/;
#cp seal.sty seal_proposal_template/;
cp logos/seal_bw.* seal_proposal_template/;
cp logos/logo_uzh.* seal_proposal_template/;
zip -r seal_proposal_template.zip seal_proposal_template;
rm -rf seal_proposal_template