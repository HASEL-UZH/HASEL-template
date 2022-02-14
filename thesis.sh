#!/bin/bash
# generate a zip with all necessary files to write a thesis

FOLDER_NAME=generated_thesis_template

mkdir ${FOLDER_NAME};

cp hasel_thesis/example_thesis.tex ${FOLDER_NAME}/;
cp hasel_thesis/hasel_thesis.cls ${FOLDER_NAME}/;
cp hasel.sty ${FOLDER_NAME}/;

cp logos/logo_uzh.* ${FOLDER_NAME}/;
cp logos/logo_hasel_bw.* ${FOLDER_NAME}/;
cp logos/logo_hasel.* ${FOLDER_NAME}/;

zip -r ${FOLDER_NAME}.zip ${FOLDER_NAME};
rm -rf ${FOLDER_NAME}
