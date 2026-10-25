#!/usr/bin/env bash
# Zip skills for upload to Claude. Usage: ./scripts/package.sh [skill-name ...]
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"
cd "$root/skills"
mkdir -p "$root/dist"

if [ "$#" -gt 0 ]; then
  skills=("$@")
else
  skills=(*/)
fi

for s in "${skills[@]}"; do
  s="${s%/}"
  if [ ! -f "$s/SKILL.md" ]; then
    echo "skip: $s has no SKILL.md" >&2
    continue
  fi
  rm -f "$root/dist/$s.zip"
  zip -rq "$root/dist/$s.zip" "$s" -x '*.DS_Store'
  echo "dist/$s.zip"
done
