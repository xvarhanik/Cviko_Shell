#!/bin/bash

toFind="https://arxiv.org/search/?query="
for A in $@ 
do
    toFind+=$A+
done
toFind+="&searchtype=all&source=header";
arxRegExp="arXiv:[^<]+"

wget -q -O - "$toFind" | grep -E -o "$arxRegExp" | sed 's/arXiv://' | sort -u

#sort -u sa tu nachadza v pripade ze z nejakeho dôvodu  su 2 cisla rovnake




 
