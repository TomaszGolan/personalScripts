#!/bin/bash

cd /data/Dokumenty

./compress.sh GENIE
./compress.sh MINERvA

date=`date +%Y-%m-%d`

drive upload -f GENIE_${date}.tgz
drive upload -f MINERvA_${date}.tgz

rm GENIE_${date}.tgz
rm MINERvA_${date}.tgz

./cleanDrive.sh GENIE
./cleanDrive.sh MINERvA

echo 'done'
sleep 2
