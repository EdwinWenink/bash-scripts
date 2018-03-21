#!/bin/bash

declare -a arr=("beavis.zen" "dragon" "elephant" "skeleton" "sodomized" "surgery" "turtle")

arrayLength=${#arr[@]}

randomIndex=$((RANDOM%=$arrayLength))

cowsay -f ${arr[$randomIndex]} $(fortune)!
