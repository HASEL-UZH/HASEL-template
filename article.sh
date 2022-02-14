#!/bin/bash
# generate a zip with all necessary files to write an article

mkdir generated_article_template;

cp hasel_article/example_article.tex generated_article_template/;
cp hasel_article/hasel_article.cls generated_article_template/;
cp hasel.sty generated_article_template/;

cp logos/logo_hasel_bw.* generated_article_template/;
cp logos/logo_hasel.* generated_article_template/;
cp logos/logo_uzh.* generated_article_template/;

zip -r generated_article_template.zip generated_article_template;
rm -rf generated_article_template
