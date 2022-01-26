#!/bin/sh

HUGOVERSION=0.60.1

wget https://github.com/gohugoio/hugo/releases/download/v$HUGOVERSION/hugo_${HUGOVERSION}_Linux-64bit.tar.gz
tar xvzf hugo_${HUGOVERSION}_Linux-64bit.tar.gz

rm hugo_${HUGOVERSION}_Linux-64bit.tar.gz

./hugo

mv custom_404.php public/

cd public
rm 404.html
sed 's|<loc>|<loc>https://opengoldbergvariations.org|g' sitemap.xml > sitemap2.xml
rm sitemap.xml
mv sitemap2.xml sitemap.xml
cp sitemap.xml sitemap-google.xml

