#!/usr/bin/bash
OS_TARGETS="linux darwin freebsd windows"

cd ./cmd/isupam

for os in $OS_TARGETS; do
  if [ "$os" == "windows" ]; then
    GOOS=$os go build -ldflags "-s -w" -o ../../bin/isupam_$os.exe
  else
    GOOS=$os go build -ldflags "-s -w" -o ../../bin/isupam_$os
  fi
done
