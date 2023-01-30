rm -rf dist
mkdir dist
pdflatex  -output-directory dist main.tex
mv src/main.* ./dist
mv ./dist/main.tex ./src