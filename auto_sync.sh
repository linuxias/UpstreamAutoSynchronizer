#!/bin/bash

HEADER_ACCEPT="Accept: application/vnd.github+json"
HEADER_AUTHORIZATION="Authorization: Bearer $1"

GITHUB_URL="https://api.github.com/repos"
OWNER="linuxias"
DATA='{"branch": "main"}'

declare -A repo_pairs
repo_pairs=(
	["linux"]="master"
	["systemd"]="main"
	["carbon-lang"]="trunk"
        ["glib"]="main"
)

for repo in "${!repo_pairs[@]}"; do
	branch=${repo_pairs[$repo]}
	echo $repo $branch 
	curl \
		-X POST \
		-H "${HEADER_ACCEPT}" \
		-H "${HEADER_AUTHORIZATION}" \
		"${GITHUB_URL}/$OWNER/$repo/merge-upstream" \
		-d "{\"branch\": \"${branch}\"}"
done
