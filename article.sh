#!/bin/bash
# generate a zip with all necessary files to write an article

mkdir seal_article_template;
cp seal_article/example_article.tex seal_article_template/;
cp seal_article/seal_article.cls seal_article_template/;
cp seal.sty seal_article_template/;
cp logos/seal_bw.* seal_article_template/;
cp logos/seal_blue.* seal_article_template/;
cp logos/logo_uzh.* seal_article_template/;
zip -r seal_article_template.zip seal_article_template;
rm -rf seal_article_template