#!/bin/bash

cd /compile/source/linux-stable

for i in `cat /compile/doc/stable/misc.exy/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/stable/misc.exy/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
