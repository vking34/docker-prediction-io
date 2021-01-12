#!/usr/bin/env bash

CURRENT_DIR=`pwd`

get_current_dir() {
  if [ x"$PIO_CURRENT_DIR" != "x" ] ; then
    echo $PIO_CURRENT_DIR
    return
  fi
  D=`echo $CURRENT_DIR | sed -e "s,.*$BASE_WORK_DIR,$BASE_WORK_DIR,"`
  if [[ $D = $BASE_WORK_DIR* ]] ; then
    echo $D
  else
    echo $BASE_WORK_DIR
  fi
}

wdir=`get_current_dir`
echo $CURRENT_DIR