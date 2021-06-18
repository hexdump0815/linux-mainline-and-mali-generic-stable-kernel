#!/bin/bash

cd /compile/source/linux-stable

./scripts/config --set-val CONFIG_MAGIC_SYSRQ_DEFAULT_ENABLE 0x0

./scripts/config --set-str CONFIG_LOCALVERSION "-stb-exy"

for i in `cat /compile/doc/stable/misc.exy/options/additional-options-special-yes.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -e $i
done

for i in `cat /compile/doc/stable/misc.exy/options/additional-options-special-mod.txt | grep -v ^#`; do
  echo $i
  ./scripts/config -m $i
done
