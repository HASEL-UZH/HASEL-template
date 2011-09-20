#!/bin/bash
# generate a zip with all necessary files to write a task description

mkdir seal_task_template;
cp task_description/example.tex seal_task_template/;
cp task_description/task_description.cls seal_task_template/;
cp seal_article/seal_article.cls seal_task_template/;
cp seal.sty seal_task_template/;
cp logos/seal_bw.* seal_task_template/;
cp logos/logo_uzh.* seal_task_template/;
zip -r seal_task_template.zip seal_task_template;
rm -rf seal_task_template