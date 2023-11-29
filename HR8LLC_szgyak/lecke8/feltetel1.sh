#!/bin/bash
if [[ $# -ne 2 ]]; then
	echo "Két bemenetre van szükség, a $# adott." 1>&2
	exit 1
fi


reg_ex='^[0-9]+$'
if [[ ! $1 =~ $reg_ex || ! $2 =~ $reg_ex ]]; then
	echo "Mindkét bemenetnek pozitív egész számnak kell lenne!" 1&2
	exit 1
fi

echo "Terület az: $(($1 * $2))"
