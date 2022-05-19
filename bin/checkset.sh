#!/bin/sh
if [ -z "$KERNELPATH" ]
then
	echo "Setting KERNELPATH to this directory which is probably what you want"
	echo "Please set KERNELPATH when running this utility to over-ride";
	echo "KERNELPATH=`pwd` ~/my-environment/bin/checkset.sh"
	KERNELPATH=`pwd`
fi
for file in *.patch;
do $KERNELPATH/scripts/checkpatch.pl --strict $file;
done
