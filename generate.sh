#!/bin/bash

echo "Generating example blog HTML..."
pushd blog
lake exe generate-blog
popd

echo "Generating example package documentation HTML..."
pushd package-docs/manual
lake exe docs
popd

echo "Generating textbook HTML and code..."
pushd textbook
lake exe textbook
cd _out
zip -r code.zip example-code
popd

echo "Collecting generated HTML..."
mkdir -p out
cp -r blog/_site out/blog
cp -r package-docs/manual/_out/html-multi out/package-docs
cp -r textbook/_out/html-multi out/textbook
cp textbook/_out/code.zip out/textbook/

echo "The sites can be viewed by running a server. If in doubt, try the following command:"
echo "python3 ./serve.py 8000"
