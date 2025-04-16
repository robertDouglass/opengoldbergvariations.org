#!/bin/sh

HUGOVERSION=0.60.1

# Detect OS type
if [ "$(uname)" = "Darwin" ]; then
    # macOS
    wget https://github.com/gohugoio/hugo/releases/download/v${HUGOVERSION}/hugo_${HUGOVERSION}_macOS-64bit.tar.gz
    tar xvzf hugo_${HUGOVERSION}_macOS-64bit.tar.gz
    rm hugo_${HUGOVERSION}_macOS-64bit.tar.gz
else
    # Linux
    wget https://github.com/gohugoio/hugo/releases/download/v${HUGOVERSION}/hugo_${HUGOVERSION}_Linux-64bit.tar.gz
    tar xvzf hugo_${HUGOVERSION}_Linux-64bit.tar.gz
    rm hugo_${HUGOVERSION}_Linux-64bit.tar.gz
fi

# Make hugo executable
chmod +x hugo

./hugo

cd public
sed 's|<loc>|<loc>https://opengoldbergvariations.org|g' sitemap.xml > sitemap2.xml
rm sitemap.xml
mv sitemap2.xml sitemap.xml
cp sitemap.xml sitemap-google.xml

