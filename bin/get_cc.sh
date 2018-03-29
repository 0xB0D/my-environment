#!/bin/bash
FILE=`git diff HEAD~1 --name-only`

echo "file = "$FILE
while read i; do echo "Cc:" $i | grep -v pure.logic@nexus-software.ie; done < <(scripts/get_maintainer.pl --email --nogit --git-fallback --m --r --n --l --multiline --pattern-depth=0 --remove-duplicates --norolestats $FILE)

git shortlog -ne $FILE
