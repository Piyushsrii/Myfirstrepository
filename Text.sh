#!/bin/bash -x
for file1 in `ls *.txt`
do
      folderName1=`echo $file1 |awk -F. '{print $1}'`
      rm -R folderName1
      mkdir folderName1
      cp $file1 folderName1
done
