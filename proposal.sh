#!/bin/bash
# generate a zip with all necessary files to write a research proposal

FOLDER_NAME=generated_proposal_template

mkdir ${FOLDER_NAME};
mkdir ${FOLDER_NAME}/sections;

cp hasel_proposal/example_proposal.tex ${FOLDER_NAME}/;
cp hasel_proposal/hasel_proposal.cls ${FOLDER_NAME}/;
cp -r hasel_proposal/sections/ ${FOLDER_NAME}/sections/;

#cp hasel.sty ${FOLDER_NAME}/;  #  not needed

cp logos/logo_hasel_bw.* ${FOLDER_NAME}/;
cp logos/logo_uzh.* ${FOLDER_NAME}/;

zip -r ${FOLDER_NAME}.zip ${FOLDER_NAME};
rm -rf ${FOLDER_NAME}
