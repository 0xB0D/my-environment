#!/bin/bash
echo "Maintainers"
scripts/get_maintainer.pl $1

echo "Commit authors"
git shortlog --summary --numbered --email $1
