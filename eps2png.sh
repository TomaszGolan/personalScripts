#!/bin/bash

for eps in *.eps
do
  convert -resize 1920x1080 $eps `basename $eps .eps`.png
done
