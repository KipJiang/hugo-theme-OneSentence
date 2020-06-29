#!/usr/bin/env sh

set -e
echo "Starting demo deploying ......"

rm -r public/*
echo "Done: rm -r /public/* \n"

hugo
echo "Done: hugo \n"

cd public/
git add .
git commit -m "gh-pages update at $(date)"
echo "Done: git commit Site update at $(date)\n"

git push -u origin gh-pages
echo "\nDone: git push -u origin gh-pages"
