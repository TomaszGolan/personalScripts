#!/bin/bash

find *.eps -exec ps2pdf -dEPSCrop {} \;

# merge all pdf files to $1.pdf output

if [ ! -z $1 ]
then
  pdftk *.pdf output $1.pdf
fi
