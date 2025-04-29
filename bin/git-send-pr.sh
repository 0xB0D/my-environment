#!/usr/bin/env bash

# Check we got at least 4 args
if [ $# -lt 4 ]; then
	echo "Usage: $0 start url end kernel-version [git-send-email options]"
	exit 1
fi

start="$1"
url="$2"
end="$3"
kver="$4"
shift 4

push_ref() {
	git rev-parse --abbrev-ref --symbolic-full-name $1
}

if [ "$start" = "{}" ]; then
	#start=$(git describe --all --abbrev=0 --exclude "*$(push_ref HEAD)")

	# Match "vXXXX" tags, e.g. v6.13-rc2, v2025.04-rc2, etc.
	start=$(git describe --tags --abbrev=0 --match "v*")
	echo "Using start: $start"
fi

end_tag=$(git describe --tags --abbrev=0)
if [ "$(git rev-parse $end_tag)" != "$(git rev-parse $start)" ]; then
	echo "Using $end_tag as end"
	end=$end_tag
fi

pull=$(mktemp /tmp/git-pull-XXXXXXX.pull)

echo "From: $(git config user.name) <$(git config user.email)>" >> $pull
echo "Date: $(date -R)" >> $pull
echo "Subject: [GIT PULL FOR $kver] Please pull $end" >> $pull
echo >> $pull

git request-pull "$start" "$url" "$end" >> $pull

git send-email --annotate "$@" $pull
