#!/bin/bash
# generate a zip with all necessary files to write a report

FOLDER_NAME=generated_report_template

mkdir ${FOLDER_NAME};

cp hasel_report/example_report.tex ${FOLDER_NAME}/;
cp hasel_report/hasel_report.cls ${FOLDER_NAME}/;
cp hasel.sty ${FOLDER_NAME}/;

cp logos/logo_hasel_bw.* ${FOLDER_NAME}/;
cp logos/logo_hasel.* ${FOLDER_NAME}/;
cp logos/logo_uzh.* ${FOLDER_NAME}/;

zip -r ${FOLDER_NAME}.zip ${FOLDER_NAME};
rm -rf ${FOLDER_NAME}
