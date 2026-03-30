#!/bin/bash
set -e
set -x
echo "📍 Current Dir"
pwd

echo "📦 Installing dependencies"
pip install -r ../requirements.txt

echo "🚀 Running script"
python script.py

echo "📄 Checking log1.txt"
if [ -f log1.txt ]; then
  cat log1.txt
  cp log1.txt ../../log-file/
else
  echo "❌ log1.txt not found"
  exit 1
fi
