#!/bin/bash

if [[ -z "$1" || -z "$2" ]]
  then
    echo "USAGE: ./run.sh <day number> <chapter number>"
    echo "       ./run.sh 01 01"
    exit 1
fi

FILE=day$1/chapter$2.lua

if [ -f "$FILE" ]; then
    echo "Running: $FILE"
    lua day$1/chapter$2.lua
else 
    echo "$FILE does not exist."
    exit 1
fi
