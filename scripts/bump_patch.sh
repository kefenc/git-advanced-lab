#!/usr/bin/env bash
set -e
# get latest qa tag
latest=$(git tag --list 'qa-*' --sort=-v:refname | head -n1)
if [ -z "$latest" ]; then
  major=0; minor=1; patch=0
else
  # strip qa- prefix
  ver=${latest#qa-}
  IFS='.' read -r major minor patch <<< "$ver"
  patch=$((patch+1))
fi
new="qa-${major}.${minor}.${patch}"
git tag -a "$new" -m "Auto tag $new"
git push origin "$new"
echo "Created tag $new"

