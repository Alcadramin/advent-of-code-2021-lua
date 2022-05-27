#!/bin/bash

BOLD="\033[1m"
NORMAL="\033[0m"

if [[ -z "$1" ]]
  then
    echo -e "${BOLD}USAGE:${NORMAL} ./run.sh <day number>"
    echo -e "       ./run.sh 01"
    exit 1
fi

FILE=day$1/main.lua

if [ -f "$FILE" ]; then
    echo -e "${BOLD}Running:${NORMAL} $FILE\n"
    lua $FILE
else 
    echo "$FILE does not exist."
    exit 1
fi
