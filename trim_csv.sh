#!/usr/bin/env bash

set -euo pipefail

if [ $# -eq 0 ]; then
  echo "Error: No arguments provided"
  exit 1
fi

sed '1d;/^,$/d;s/^"POLYGON ((\(.*\)))".*$/\1/g' "${1}"
