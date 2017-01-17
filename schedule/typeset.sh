#!/bin/bash
CURRDIR=`pwd`
mkdir -p compile
echo "Please enter tex file name:"
read tex_file_name
cp $tex_file_name.tex compile
#for i in `ls *.sty`
#do
#    cp $i compile
#done
cd compile
rm $tex_file_name.aux $tex_file_name.fdb_latexmk $tex_file_name.fls $tex_file_name.log $tex_file_name.pdf $tex_file_name.synctex.gz
latexmk -pdf $tex_file_name.tex
cp $tex_file_name.pdf $CURRDIR
cd $CURRDIR
rm -rf compile
open $tex_file_name.pdf -a /Applications/Preview.app

