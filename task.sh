#!/bin/bash
# generate a zip with all necessary files to write a task description

mkdir generated_task_template;

cp hasel_task/example_task.tex generated_task_template/;
cp hasel_task/hasel_task.cls generated_task_template/;
cp hasel_article/hasel_article.cls generated_task_template/;
cp hasel.sty generated_task_template/;

cp logos/logo_hasel_bw.* generated_task_template/;
cp logos/logo_uzh.* generated_task_template/;

zip -r generated_task_template.zip generated_task_template;
rm -rf generated_task_template
