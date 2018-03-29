#!/bin/sh
for file in *.patch;
do /home/deckard/Development/linux/scripts/checkpatch.pl --strict $file;
done
