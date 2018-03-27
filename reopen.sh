#!/bin/bash

# opens terminator and cd's to the current path

currentPath=$(pwd)
terminator & disown
cd $currentPath
