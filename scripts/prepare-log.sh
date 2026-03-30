#!/bin/bash
set -e
set -x

echo "📂 Copying log into repo"
cp ../../log-file/log1.txt ../

echo "📂 Verifying"
ls -l ..
