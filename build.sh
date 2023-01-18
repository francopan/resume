rm -rf dist
mkdir dist
cd src
pdflatex main.tex && bibtex main && pdflatex main.tex && pdflatex main.tex
cd ..
mv src/main.* ./dist
mv ./dist/main.tex ./src