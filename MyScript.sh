#!/bin/bash

source calc.sh
source search.sh
source reverse
source strlen
source log
source exit_
source help

case "$1" in
"calc.sh")
if (( $# == 4 ))
then calc.sh "$2" "3" "4"
else echo "Only 4 arg" 1>&2
fi
;;

"search.sh")
if (( $# == 3))
then search.sh "$2" "$3"
else echo "only 4 arg" 1>&2
fi
;;

"reverse")
if (( $# == 3 ))
then  reverse "$2" "$3"
else echo "only 4 arg" 1>&2
fi
;;

"strlen")
if (( $# == 2 ))
then strlen "$2"
else echo "only 4 arg" 1>&2
fi
;;

"exit_")
if (( $# == 1 ))
then echo "exit: 0"
exit 0
elif (( $# == 2 ))
then exit_ "$2"
else echo "only 2 arg" 1>&2
fi
;;

"help")
if (( $# == 1 ))
then help
else echo "only 1 arg" 1>&2
fi
;;

esac
