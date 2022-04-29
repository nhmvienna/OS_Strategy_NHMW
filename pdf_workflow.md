# PDF creation

This document explains the workflow for the generic creation of a PDF version 
of the main .md document.

## Make sure [`pandoc`](https://pandoc.org/) is installed locally on your system:
On Linux (Debian/Ubuntu):
>sudo apt-get install pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra

For other distributions see: https://pandoc.org/installing.html

## Prepare the `OS-Strategy-NHMW-Vx.md`file for conversion

search and replace:

* 1: `<!-- comment .pdf creation begin -->` with `<!--`  
* 2: `<!-- comment .pdf creation end -->` with `-->`
* 3: `<!-- uncomment begin` with `<!-- uncomment begin -->`
* 4: `<!-- uncomment end` with `<!-- uncomment end -->`

## Create .pdf
Open a terminal and convert the .md file to .pdf
>  pandoc sourcefile.md -o outputfile.pdf

## Undo comment/uncomment

search and replace:

* 1: `<!--` with `<!-- comment .pdf creation begin -->`   
* 2: `-->` with `<!-- comment .pdf creation end -->`
* 3: `<!-- uncomment begin -->` with `<!-- uncomment begin`
* 4: `<!-- uncomment end -->` with `<!-- uncomment end`

## Check the pdf file
That's it! Hope you like the result.