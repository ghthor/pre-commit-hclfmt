#!/usr/bin/env bash
set -e

if ! command -v hclfmt 2>&1 >/dev/null; then
  if ! command -v go 2>&1 >/dev/null; then
    echo "please install golang which is required to install/run hclfmt"
    exit 1
  fi

  go install github.com/hashicorp/hcl/v2/cmd/hclfmt@latest
fi

for file in "$@"; do
  hclfmt -w $file
done
