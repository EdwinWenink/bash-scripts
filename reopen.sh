#!/bin/bash

# opens terminator and cd's to the current path

currentPath=$(pwd)
urxvt & disown
cd $currentPath
