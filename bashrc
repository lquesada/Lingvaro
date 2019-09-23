###
# Copyright (c) 2019, Luis Quesada Torres - https://github.com/lquesada | www.luisquesada.com
# Lingvaro (https://github.com/lquesada/Lingvaro) dictionary lookup by match in any field

# Usage:
# 1. Copy this script to your .bashrc file.
# 2. Set this path to point to your copy of lingvaro.tsv:
PATH_TO_LINGVARO=~/lingvaro.tsv
#
# Use $ lingvaro to lookup the cross-language dictionary by match in text.
# e.g. $ lingvaroall potato
#
# Use $ lingvaroall to lookup the cross-language dictionary by match in text.
# e.g. $ lingvaroall grammar
#
# Doesn’t fit your screen? Adjust the separator size:
LINGVARO_SEPARATOR_SIZE=53

function lingvaro() {
(
  RED='\033[1;31m'
  NC='\033[0m' # No Color
  echo ''
  tabs $LINGVARO_SEPARATOR_SIZE
  printf "${RED}"
  head $PATH_TO_LINGVARO -n 1 | cut -f 9-13 
  head $PATH_TO_LINGVARO -n 1 | cut -f 9-13 | tr '[:graph:]ñü' '-'
  printf "${NC}"
  (cat $PATH_TO_LINGVARO;echo '') | cut -f 9-13 | grep -i $1
  echo ''
)
}

function lingvaroall() {
(
  RED='\033[1;31m'
  NC='\033[0m' # No Color
  echo ''
  tabs $LINGVARO_SEPARATOR_SIZE
  printf "${RED}"
  head $PATH_TO_LINGVARO -n 1 | cut -f 9-13 
  head $PATH_TO_LINGVARO -n 1 | cut -f 9-13 | tr '[:graph:]ñü' '-'
  printf "${NC}"
  (cat $PATH_TO_LINGVARO;echo '') | grep -v ^title | grep -i $1 | cut -f 9-13
  echo ''
)
}
###
