#!/bin/bash
set -e

echo "📍 Current location"
pwd

echo "📄 Check log file presence"
if [ -f ../../log-file/log1.txt ]; then
  echo "✅ log1.txt found"
else
  echo "❌ log1.txt not found"
  exit 1
fi

echo "➡️ Moving to terraform folder"
cd ../terraform/module

echo "📍 Current folder"
pwd

echo "📂 Files"
ls -l

echo "🔐 AWS check"
aws sts get-caller-identity

echo "🚀 Terraform Init"
terraform init -reconfigure

echo "📋 Terraform Plan"
terraform plan -var-file="../../env/dev.tfvars"

echo "⚙️ Terraform Apply"
terraform apply -var-file="../../env/dev.tfvars" -auto-approve

echo "✅ Done"
