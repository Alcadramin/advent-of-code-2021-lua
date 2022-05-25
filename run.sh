#!/bin/bash

BOLD="\033[1m"
NORMAL="\033[0m"

if [[ -z "$1" || -z "$2" ]]
  then
    echo -e "${BOLD}USAGE:${NORMAL} ./run.sh <day number> <chapter number>"
    echo -e "       ./run.sh 01 01"
    exit 1
fi

FILE=day$1/chapter$2.lua

if [ -f "$FILE" ]; then
    echo -e "${BOLD}Running:${NORMAL} $FILE\n"
    lua day$1/chapter$2.lua
else 
    echo "$FILE does not exist."
    exit 1
fi
