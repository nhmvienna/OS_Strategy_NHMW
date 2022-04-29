# PDF creation

This document explains the workflow for the generic creation of a PDF version 
of the main .md document. (On Linux distributions)

## Make sure [`pandoc`](https://pandoc.org/) is installed locally on your system:
On Linux (Debian/Ubuntu):

    # sudo apt-get install pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra

## Convert `.md` file to `.pdf`
Run the script `pdf_conversion.sh`

    # sh pdf_conversion yourInputfile.md yourOutputfile.pdf

## Check the pdf file
That's it! Hope you like the result.