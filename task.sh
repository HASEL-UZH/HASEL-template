#!/bin/bash
# generate a zip with all necessary files to write a task description

FOLDER_NAME=generated_task_template

mkdir ${FOLDER_NAME};

cp hasel_task/example_task.tex ${FOLDER_NAME}/;
cp hasel_task/hasel_task.cls ${FOLDER_NAME}/;
cp hasel_article/hasel_article.cls ${FOLDER_NAME}/;
cp hasel.sty ${FOLDER_NAME}/;

cp logos/logo_hasel_bw.* ${FOLDER_NAME}/;
cp logos/logo_uzh.* ${FOLDER_NAME}/;

zip -r ${FOLDER_NAME}.zip ${FOLDER_NAME};
rm -rf ${FOLDER_NAME}
