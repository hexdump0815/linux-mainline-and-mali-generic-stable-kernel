#!/bin/bash

cd /compile/source/linux-stable-cbp

for i in `cat /compile/doc/stable/misc.cbp/options/docker-options-mod.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/stable/misc.cbp/options/docker-options-yes.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -e $i
done
