#!/bin/bash

isnum()
{
 #re='^[0-9]+$'
  if [ -n "$1" ] && ["$1" -eq "$1" ] 2>/dev/null; then
   return 0
  else
   return 1
  fi
}

calc()
{
 call_math=$1
 arg1=$2
 arg2=$3

 if ! $(isnum $arg1); then
  echo -e "${RED}First argument is not number ${NC}" 1>&2
  return 1
 fi
 if ! $(isnum $arg2); then
  echo -e "${RED}Second argument is not number${NC}" 1>&2
  return 1
 fi


case $call_math in
 mul)
  echo "RESULT: $(( arg * arg2 ))"
  ;;
 div)
  if (($arg2 ==0 )); then
   echo -e "${RED}DIV ZERO${NC}" 1>&2
   return 1
  fi
  echo "RESULT: $(( arg1 / arg2))"
  ;;
 sum)
  echo "RESULT: $(( arg1 + arg2 ))"
  ;;
 sub)
  echo "RESULT: $(( arg1 - arg2 ))"
  ;;
 *)
  echo -e "${RED}CALC FUNCTION ERROR${NC}" 1>&2
  return -1
  ;;
esac
}
