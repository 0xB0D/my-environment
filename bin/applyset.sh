#!/bin/bash
if [ "$#" -ne 1 ]; then
	echo "Illegal number of parameters"
	exit 22
fi
for file in `ls $1`
do
git am < $1/$file
done
