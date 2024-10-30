#!/usr/bin/bash
path=/home/vboxuser/Desktop;
for i in $(seq 1 5);
  do
  cd $path;
  dirName=d$i;
  mkdir $dirName;
  path=$path/$dirName;
done
echo "ok";
  


