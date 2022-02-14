#!/bin/bash
# generate a zip with all necessary files to write an article

mkdir generated_report_template;

cp hasel_report/example_report.tex generated_report_template/;
cp hasel_report/hasel_report.cls generated_report_template/;
cp hasel.sty generated_report_template/;

cp logos/logo_hasel_bw.* generated_report_template/;
cp logos/logo_hasel.* generated_report_template/;
cp logos/logo_uzh.* generated_report_template/;

zip -r generated_report_template.zip generated_report_template;
rm -rf generated_report_template
