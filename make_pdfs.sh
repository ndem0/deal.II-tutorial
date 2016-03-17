#!/bin/bash

for dir in $( ls | grep lab ); do
echo $dir/$dir.pdf
cd $dir
pandoc -i README.md -o $dir.pdf
done



