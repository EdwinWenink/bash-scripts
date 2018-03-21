#!/bin/bash

function openAndDisown {
  $1 & disown
  echo $#
  #"$@" & disown
  
}


