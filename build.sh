#!/usr/bin/env bash

HUGOVERSION=0.60.1

wget https://github.com/gohugoio/hugo/releases/download/v$HUGOVERSION/hugo_${HUGOVERSION}_Linux-64bit.tar.gz
tar xvzf hugo_${HUGOVERSION}_Linux-64bit.tar.gz

rm hugo_${HUGOVERSION}_Linux-64bit.tar.gz

./hugo

ls
cd public
ls
sed 's|<loc>|<loc>https://opengoldbergvariations.org|g' sitemap.xml > sitemap.xml
