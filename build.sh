#!/bin/bash

if [ ! -d reveal.js ]; then
    git clone https://github.com/hakimel/reveal.js.git
fi
pandoc -s --mathjax -i -t revealjs slides.md -o index.html
open index.html
