#!/bin/bash
set -e

echo "📂 Copying log into repo"
cp ../../log-file/log1.txt ../

echo "📂 Verifying"
ls -l ..
