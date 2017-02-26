#!/bin/sh

find ./ -type f -iname "*.tex" -exec iconv -f utf-8 -t cp936 {} -o ../gbkver/{} \;
find ./ -type f -iname "*.cls" -exec iconv -f utf-8 -t cp936 {} -o ../gbkver/{} \;
find ./ -type f -iname "*.bst" -exec iconv -f utf-8 -t cp936 {} -o ../gbkver/{} \;
find ./ -type f -iname "*.cfg" -exec iconv -f utf-8 -t cp936 {} -o ../gbkver/{} \;
find ./ -type f -iname "*.bib" -exec iconv -f utf-8 -t cp936 {} -o ../gbkver/{} \;
