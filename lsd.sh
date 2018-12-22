#!/bin/bash

if [[ -e $1 ]]; then
  cd ${1}
  ls -a 
fi
