#!/bin/bash

# -------------------------------------------
# GCP IAM Security Lab
# Verify IAM Policy Assignment
# -------------------------------------------

PROJECT_ID="gcp-iam-security-lab"

SERVICE_ACCOUNT="cloud-security-viewer@gcp-iam-security-lab.iam.gserviceaccount.com"

echo "[+] Verifying IAM Policy..."

gcloud projects get-iam-policy $PROJECT_ID \
--flatten="bindings[].members" \
--filter="bindings.members:$SERVICE_ACCOUNT" \
--format="table(bindings.role)"

echo "[✓] Verification Complete"
