#!/bin/bash

toFind="https://arxiv.org/search/?query="
for A in $@ 
do
    toFind+=$A+
done
toFind+="&searchtype=all&source=header";
arxRegExp="arXiv:[^<]+"


wget -q -O - "$toFind" | grep -E -o "$arxRegExp" | sed 'arXiv:' | sort -u







