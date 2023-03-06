#!/bin/bash

#PPCG=gcc
#PPCG_OPT=-O3 -mavx2
#PPCG_INCLUDE=

set -e

while IFS="" read -u 10 p; do
  CUR=`pwd`
  #make reterive DATA="data-\"$p\"" &&  make cuda && make result
  if [ -z "$p" ]
  then
      echo "\$p is empty"
  else
      cp Makefile $CUR/$p
      cd $CUR/$p
      make PPCG="$PPCG" PPCG_OPT="$PPCG_OPT" PPCG_INCLUDE="$PPCG_INCLUDE"
      rm Makefile
      cd $CUR
  fi

done 10<dir.config
