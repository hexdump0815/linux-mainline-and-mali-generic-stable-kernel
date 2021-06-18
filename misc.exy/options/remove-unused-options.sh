#!/bin/bash

for i in `cat /compile/doc/stable/misc.exy/options/options-to-remove-special.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -d $i
done
