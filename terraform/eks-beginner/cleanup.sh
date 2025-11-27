#!/bin/bash
############################################
# cleanup.sh
# Destroys all Terraform-managed resources
############################################

set -e

echo "🚀 Destroying Terraform resources..."
terraform destroy -auto-approve

echo "✅ Cleanup complete!"
