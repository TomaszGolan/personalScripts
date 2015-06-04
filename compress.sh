#!/bin/bash

if [ -z $1 ]
then
  echo 'ERROR: missing argument [usage: compress target]'
  exit 1
fi

if [ ${1: -1} == '/' ] # remove last / from path/ for proper output filename
then file=${1::-1}
else file=$1
fi

date=`date +%Y-%m-%d`

# tar eveything but .* files, call pv with target size (for proper progress bar)
tar -cf - $1 --exclude=".*" | pv -s $(du -sb $1 | awk '{print $1}') | gzip > ''$file'_'$date'.tgz'
