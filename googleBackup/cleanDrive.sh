#!/bin/bash

if [ -z $1 ] 
then
  echo 'ERROR: missing argument [usage: cleanDrive filename #copies]'
  exit 1
fi

if [ -z $2 ]
then max=5
else max=$2
fi

list="$(drive list | grep $1 | awk '{print $1}')"

counter=0

for x in $list
do
  if [ $counter -eq $max ]
  then drive delete -i $x
  else let "counter+=1"
  fi
done

