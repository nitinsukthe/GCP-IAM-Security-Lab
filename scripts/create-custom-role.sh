#!/bin/bash

# -------------------------------------------
# GCP IAM Security Lab
# Create Custom IAM Role
# -------------------------------------------

PROJECT_ID="gcp-iam-security-lab"

echo "[+] Creating Custom IAM Role..."

gcloud iam roles create CustomRole \
--project=$PROJECT_ID \
--file=role-definition.json

echo "[✓] Custom IAM Role Created Successfully"
